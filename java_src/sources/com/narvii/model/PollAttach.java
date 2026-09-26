package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.util.KUtils;
import e8.p;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class PollAttach {
    public String attachId;
    public boolean isModified = false;

    @JsonDeserialize(contentAs = PollOption.class)
    public List<PollOption> polloptList;
    public String title;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PollAttach pollAttach = (PollAttach) obj;
        String str = this.title;
        if (str == null ? pollAttach.title != null : !str.equals(pollAttach.title)) {
            return false;
        }
        List<PollOption> list = this.polloptList;
        List<PollOption> list2 = pollAttach.polloptList;
        if (list != null) {
            return isOptionListEquals(list, list2);
        }
        return list2 == null;
    }

    public static boolean isOptionListEquals(List<PollOption> list, List<PollOption> list2) {
        return KUtils.Companion.isListSame(list, list2, new p() { // from class: com.narvii.model.a
            @Override // e8.p
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(((PollOption) obj).isSame((PollOption) obj2));
            }
        });
    }

    public int getAllVoteCount() {
        List<PollOption> list = this.polloptList;
        int i10 = 0;
        if (list != null) {
            for (PollOption pollOption : list) {
                if (pollOption != null) {
                    i10 += pollOption.votesCount + pollOption.globalVotesCount;
                }
            }
        }
        return i10;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        List<PollOption> list = this.polloptList;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }
}
