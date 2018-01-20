module NCPDP
  module Segments
    class PharmacyProvider
      include NCPDP::Segments

      # 111-AM  Segment Identification
      # 465-EY  Provider ID Qualifier
      # 444-E9  Provider ID

      def schema
        {
         'AM'	=> 'Segment Identification',
         'EY'	=> 'Provider ID Qualifier',
         'E9'	=> 'Provider ID' }
      end
    end

  end
end