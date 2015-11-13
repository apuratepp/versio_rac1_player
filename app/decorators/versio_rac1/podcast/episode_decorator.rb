module VersioRac1
  module Podcast
    class EpisodeDecorator < Draper::Decorator
      delegate_all

      def next_broadcasted_at
        object.broadcasted_at + 1.day
      end

      def next_broadcasted_at_params
        broadcasted_at_params(next_broadcasted_at)
      end

      def previous_broadcasted_at
        object.broadcasted_at - 1.day
      end

      def previous_broadcasted_at_params
        broadcasted_at_params(previous_broadcasted_at)
      end

      private

      def broadcasted_at_params(date)
        {
          year:  date.year,
          month: date.month,
          day:   date.day
        }
      end
    end
  end
end
