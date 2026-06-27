package com.narvii.util;

import android.content.Context;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.model.PollOption;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class BlogUtils {
    public static String getPollDurationText(Blog blog, Context context) {
        int i;
        if (blog == null || context == null) {
            return null;
        }
        List<PollOption> list = blog.polloptList;
        if (list != null) {
            Iterator<PollOption> it = list.iterator();
            i = 0;
            while (it.hasNext()) {
                i += it.next().votesCount;
            }
        } else {
            i = 0;
        }
        String str = (i == 1 ? context.getString(R.string.poll_one_vote) : context.getString(R.string.poll_n_votes, Integer.valueOf(i))) + "  •  ";
        Date date = blog.endTime;
        if (date == null) {
            return str + context.getString(R.string.detail_vote_poll_ended);
        }
        long time = date.getTime() - System.currentTimeMillis();
        if (time < 3600000) {
            return str + context.getString(R.string.detail_vote_end_in_less_than_one_hours);
        }
        if (time < 7200000) {
            return str + context.getString(R.string.detail_vote_end_in_one_hours);
        }
        if (time < DateUtils.ONE_DAY) {
            return str + context.getString(R.string.detail_vote_end_in_n_hours, Integer.valueOf((int) (time / 3600000)));
        }
        if (time < 172800000) {
            return str + context.getString(R.string.detail_vote_end_in_one_day);
        }
        return str + context.getString(R.string.detail_vote_end_in_n_days, Integer.valueOf((int) (time / DateUtils.ONE_DAY)));
    }

    public static String getQuizRecordText(Blog blog, Context context) {
        if (blog == null || context == null) {
            return null;
        }
        int quizPlayedTimes = blog.getQuizPlayedTimes();
        int quizQuestionCount = blog.getQuizQuestionCount();
        String string = quizPlayedTimes < 10 ? context.getString(R.string.quiz_new_quiz) : context.getString(R.string.quiz_played_times, Integer.valueOf(quizPlayedTimes));
        if (quizQuestionCount == 0) {
            return string;
        }
        return (string + "  •  ") + context.getString(R.string.question_count, Integer.valueOf(quizQuestionCount));
    }
}
