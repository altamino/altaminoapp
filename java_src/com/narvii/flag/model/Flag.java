package com.narvii.flag.model;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.model.ExternalSource;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.util.text.TagSpan;
import com.narvii.util.text.TextUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class Flag extends NVObject {
    public static final int FLAG_RESOLVE_TYPE_CUSTOM = 100;
    public static final int FLAG_RESOLVE_TYPE_INAPPROPRIATE_CONTENT = 2;
    public static final int FLAG_RESOLVE_TYPE_KEEP = 0;
    public static final int FLAG_RESOLVE_TYPE_OFF_TOPIC = 1;
    public static final int FLAG_RESOLVE_TYPE_SPAM = 3;
    public static final int FLAG_RESOLVE_TYPE_VIOLATION = 4;
    public static final int FLAG_STATUS_NONE = 0;
    public static final int FLAG_STATUS_PENDING = 1;
    public static final int FLAG_STATUS_RESOLVED = 2;
    public static final int FLAG_TYPE_HARASSMENT_N_TROLLING = 109;
    public static final int FLAG_TYPE_HATE_SPEECH_N_BIGOTRY = 107;
    public static final int FLAG_TYPE_INAPPROPRIATE_REQUESTS = 102;
    public static final int FLAG_TYPE_NUDITY_N_PORNOGRAPHY = 110;
    public static final int FLAG_TYPE_SELF_INJURY_N_SUICIDE = 108;
    public static final int FLAG_TYPE_USER_IN_AUDIO_CHAT = 104;
    public static final int FLAG_TYPE_USER_IN_VIDEO_CHAT = 105;
    public static final int FLAG_TYPE_VIOLENT_GRAPHIC_CONTENT_OR_DANGEROUS_ACTIVITY = 106;
    public static final int TYPE_ART_THEFT = 3;
    public static final int TYPE_BULLYING = 0;
    public static final int TYPE_INAPPROPRIATE_CONTENT = 1;
    public static final int TYPE_NONE = 999;
    public static final int TYPE_OFF_TOPIC = 4;
    public static final int TYPE_OTHERS = 200;
    public static final int TYPE_OTHERS_VV_CHAT = 201;
    public static final int TYPE_SEXUALLY_EXPLICIT = 100;
    public static final int TYPE_SPAM = 2;
    public static final int TYPE_TROLLING = 5;
    public static final int TYPE_VIOLENT_CONTENT = 101;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ObjectNode extensions;
    public ExternalSource externalSource;
    public int flaggedCount;

    @JsonDeserialize(contentAs = Integer.class)
    public List<Integer> flaggedTypes;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date lastResolvedTime;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public String objectId;
    public int objectType;
    public String objectUid;
    public User objectUser;
    public User operator;
    public String parentId;
    public int parentType;
    public String reasonMessage;
    public int reasonType;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> screenshotMediaList;
    public int status;
    public int totalFlaggedCount;

    @JsonDeserialize(contentAs = Integer.class)
    public List<Integer> totalFlaggedTypes;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return Integer.MAX_VALUE;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.objectId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.objectUid;
    }

    public SpannableStringBuilder getStrikeSpanStr(Context context) {
        int iNodeInt = JacksonUtils.nodeInt(this.objectUser.adminInfo, "strikeCount");
        int i = iNodeInt == 0 ? -16724355 : iNodeInt == 1 ? -678365 : -3145189;
        String countText = TextUtils.getCountText(context, iNodeInt, R.string.one_strike, R.string.n_strikes);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(countText);
        spannableStringBuilder.append((CharSequence) " ");
        spannableStringBuilder.setSpan(new TagSpan(i, countText), 0, spannableStringBuilder.length() - 1, 33);
        return spannableStringBuilder;
    }

    public static int getFlagType(Context context, String str) {
        if (str.equals(context.getString(R.string.flag_bullying))) {
            return 0;
        }
        if (str.equals(context.getString(R.string.flag_inappropriate))) {
            return 1;
        }
        if (str.equals(context.getString(R.string.flag_spam))) {
            return 2;
        }
        if (str.equals(context.getString(R.string.flag_other))) {
            return 200;
        }
        if (str.equals(context.getString(R.string.flag_sexually_profile))) {
            return 100;
        }
        if (str.equals(context.getString(R.string.flag_violent))) {
            return 101;
        }
        if (str.equals(context.getString(R.string.flag_profile_related))) {
            return 200;
        }
        if (str.equals(context.getString(R.string.flag_off_topic))) {
            return 4;
        }
        if (str.equals(context.getString(R.string.flag_sexually_explicit))) {
            return 100;
        }
        if (str.equals(context.getString(R.string.flag_violent_image))) {
            return 101;
        }
        if (str.equals(context.getString(R.string.flag_inappropriate_request))) {
            return 102;
        }
        if (str.equals(context.getString(R.string.flag_violence_graphic_content_or_dangerous_activity))) {
            return 106;
        }
        if (str.equals(context.getString(R.string.flag_hate_speech_and_bigotry))) {
            return 107;
        }
        if (str.equals(context.getString(R.string.flag_self_injury_and_suicide))) {
            return 108;
        }
        if (str.equals(context.getString(R.string.flag_harassment_and_trolling))) {
            return 109;
        }
        if (str.equals(context.getString(R.string.flag_nudity_and_pornography))) {
            return 110;
        }
        return TYPE_NONE;
    }

    public int getBlogType() {
        ObjectNode objectNode = this.extensions;
        if (objectNode == null) {
            return 0;
        }
        return JacksonUtils.nodeInt(objectNode, "objectSubtype");
    }

    public Drawable getExternalOriginDrawable(Context context) {
        ExternalSource externalSource = this.externalSource;
        if (externalSource != null) {
            return externalSource.getOriginDrawable(context);
        }
        return null;
    }

    public String getExternalOriginName(Context context) {
        ExternalSource externalSource = this.externalSource;
        if (externalSource != null) {
            return externalSource.getFeedShowTitle(context);
        }
        return null;
    }
}
