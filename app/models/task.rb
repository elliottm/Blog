class Task < ActiveRecord::Base

	has_many :comments

	has_many :votes

	validates :title, presence: true,
				length: { minimum: 5 }

  def votes_total
  	return nil if (upvotes + downvotes).empty?
  	upvotes.size - downvotes.size
  end

private

   def upvotes
   	 votes.up
   end

   def downvotes
   	 votes.down
   end

end
