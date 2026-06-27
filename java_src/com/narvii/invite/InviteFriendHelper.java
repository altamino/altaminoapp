package com.narvii.invite;

import android.content.Context;
import com.narvii.lib.R;
import com.narvii.model.Community;
import com.narvii.share.SharePayload;
import com.narvii.util.DateTimeFormatter;

/* loaded from: classes2.dex */
public class InviteFriendHelper {
    DateTimeFormatter dateTimeFormatter = new DateTimeFormatter();

    public SharePayload getSharePayload(Context context, Community community, Invitation invitation) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = community;
        sharePayload.url = invitation.link;
        sharePayload.text = context.getString(R.string.share_community_invitation_text_template, community.name) + "\n" + invitation.link;
        return sharePayload;
    }
}
