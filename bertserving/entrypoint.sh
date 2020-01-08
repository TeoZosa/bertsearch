#!/bin/sh
bert-serving-start -num_worker=1 -model_dir /model -max_seq_len NONE
