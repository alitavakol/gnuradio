/* -*- c++ -*- */
/*
 * Copyright 2004,2006 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 * 
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#include <vector>

GR_SWIG_BLOCK_MAGIC(gr,ofdm_bpsk_mapper);

gr_ofdm_bpsk_mapper_sptr 
gr_make_ofdm_bpsk_mapper (unsigned int msgq_limit,
			  unsigned int bits_per_symbol, 
			  unsigned int fft_length,
			  const std::vector<gr_complex> &known_symbol1, 
			  const std::vector<gr_complex> &known_symbol2);

class gr_ofdm_bpsk_mapper : public gr_sync_block
{
 protected:
  gr_ofdm_bpsk_mapper (unsigned int msgq_limit,
		       unsigned int bits_per_symbol,
		       unsigned int fft_length,
		       const std::vector<gr_complex> &known_symbol1, 
		       const std::vector<gr_complex> &known_symbol2);

 public:
  gr_msg_queue_sptr msgq();

  int work(int noutput_items,
	   gr_vector_const_void_star &input_items,
	   gr_vector_void_star &output_items);
};
