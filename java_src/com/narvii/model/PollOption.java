package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Feed;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public class PollOption extends NVObject {
    public static final Comparator<PollOption> COMPARATOR = new Comparator<PollOption>() { // from class: com.narvii.model.PollOption.1
        @Override // java.util.Comparator
        public int compare(PollOption pollOption, PollOption pollOption2) {
            int i = pollOption2.votesCount - pollOption.votesCount;
            return i == 0 ? pollOption2.votesSum - pollOption.votesSum : i;
        }
    };
    public static final int OPT_FAVORITE = 1;
    public static final int OPT_PLAIN = 0;
    public String createdTime;
    public int globalVotedValue;
    public int globalVotesCount;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String parentId;
    public int parentType;
    public String polloptId;

    @JsonDeserialize(using = Feed.FeedDeserializer.class)
    public Feed refObject;
    public String refObjectId;
    public int refObjectType;
    public int status;
    public String title;
    public int type;
    public String uid;
    public int votedValue;
    public int votesCount;
    public int votesSum;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 11;
    }

    public Media firstMedia() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0) {
            return null;
        }
        return this.mediaList.get(0);
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.polloptId;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return this.parentId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.uid;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    public boolean isEmpty() {
        int i = this.type;
        if (i != 0) {
            return i != 1 || this.refObjectId == null;
        }
        if (!StringUtils.isTrimEmpty(this.title)) {
            return false;
        }
        List<Media> list = this.mediaList;
        return list == null || list.size() == 0;
    }

    public boolean isSame(PollOption pollOption) {
        int i = this.type;
        if (i != pollOption.type) {
            return false;
        }
        if (i == 0) {
            return Utils.isStringEquals(this.title, pollOption.title) && Utils.isListEquals(this.mediaList, pollOption.mediaList);
        }
        if (i == 1) {
            return Utils.isEquals(this.refObjectId, pollOption.refObjectId);
        }
        return false;
    }

    public boolean isDuplicate(PollOption pollOption) {
        int i = this.type;
        if (i != pollOption.type) {
            return false;
        }
        if (i != 0) {
            if (i == 1) {
                return Utils.isEquals(this.refObjectId, pollOption.refObjectId);
            }
            return false;
        }
        if (StringUtils.isTrimEmpty(this.title) && StringUtils.isTrimEmpty(pollOption.title)) {
            return false;
        }
        return Utils.isStringEquals(this.title, pollOption.title);
    }
}
