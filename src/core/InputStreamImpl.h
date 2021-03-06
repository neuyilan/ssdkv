//
// Created by root on 11/18/17.
//

#ifndef _GOPHERWOOD_CORE_INPUTSTREAMIMPL_H_
#define _GOPHERWOOD_CORE_INPUTSTREAMIMPL_H_

#include <iostream>
#include <cstring>

#include "FileStatus.h"
#include "FileSystem.h"
#include "FileSystemInter.h"
#include "InputStreamInter.h"
#include "Logger.h"
namespace Gopherwood {

    namespace Internal {

        class InputStreamImpl : public InputStreamInter {
        public:

            InputStreamImpl(std::shared_ptr<FileSystemInter> fs, const char *fileName, bool verifyChecksum);

            ~InputStreamImpl();


            /**
             * Open a file to read
             * @param fs gopherwood file system.
             * @param fileName the name of the file to be read.
             * @param verifyChecksum verify the checksum.
             */
//            void open(std::shared_ptr<FileSystemInter> fs, const char *fileName, bool verifyChecksum);

            /**
             * To read data from gopherwood.
             * @param buf the buffer used to filled.
             * @param size buffer size.
             * @return return the number of bytes filled in the buffer, it may less than size.
             */
            int32_t read(char *buf, int32_t size);

            /**
             * To read data from gopherwood, block until get the given size of bytes.
             * @param buf the buffer used to filled.
             * @param size the number of bytes to be read.
             */
            void readFully(char *buf, int64_t size);

            /**
             * Get how many bytes can be read without blocking.
             * @return The number of bytes can be read without blocking.
             */
            int64_t available();

            /**
             * To move the file point to the given position.
             * @param pos the given position.
             */
            void seek(int64_t pos);

            /**
             * To get the current file point position.
             * @return the position of current file point.
             */
            int64_t tell();

            /**
             * Close the stream.
             */
            void close();

            /**
             * Output a readable string of this input stream.
             */
            string toString();


        private:
            std::shared_ptr<FileSystemInter> filesystem;
            int32_t cursorBucketID; // the cursor bucket id of the output stream
            int32_t cursorIndex;//the index of the cursorBucketID. status->getBlockIdVector()[cursorIndex] = cursorBucketID

            int64_t cursorOffset;// the cursor offset of the output stream
            string fileName;


            //TODO save the particular FileStatus for the fileName, is this right or not?
            std::shared_ptr<FileStatus> status;


        private:
            void checkStatus();

            void seekInternal(int64_t pos);

            int32_t readInternal(char *buf, int32_t size);

            int64_t getRemainLength();

            void seekToNextBlock();
        };

    }

}


#endif //_GOPHERWOOD_CORE_INPUTSTREAMIMPL_H_
