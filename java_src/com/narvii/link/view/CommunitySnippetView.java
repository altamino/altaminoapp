package com.narvii.link.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.language.LanguageManager;
import com.narvii.model.Community;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PromotionalImageView;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public class CommunitySnippetView extends NVLinkSnippetView<Community> {
    NVImageView icon;
    PromotionalImageView image;
    TextView language;
    View lock;
    TextView membersCount;
    TextView tagline;
    TextView title;

    public CommunitySnippetView(Context context) {
        super(context);
        FrameLayout.inflate(getContext(), R.layout.item_snippet_community, this);
        this.title = (TextView) findViewById(R.id.title);
        ViewUtils.setMontserratExtraBoldTypeface(this.title);
        this.membersCount = (TextView) findViewById(R.id.membercount);
        this.language = (TextView) findViewById(R.id.community_language);
        this.tagline = (TextView) findViewById(R.id.tagline);
        this.lock = findViewById(R.id.community_invite_lock);
        this.image = (PromotionalImageView) findViewById(R.id.image);
        this.image.setNoAnim(true);
        this.icon = (NVImageView) findViewById(R.id.icon);
    }

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setObject(Community community) {
        this.title.setText(community.name);
        this.membersCount.setText(community.getMemberCount());
        this.language.setText(((LanguageManager) Utils.getNVContext(getContext()).getService(IjkMediaMeta.IJKM_KEY_LANGUAGE)).getLocalDisplayText(community.primaryLanguage));
        this.tagline.setVisibility(TextUtils.isEmpty(community.tagline) ? 8 : 0);
        String string = community.tagline;
        int i = community.joinType;
        if (i == 2) {
            string = getContext().getString(R.string.snippet_community_text_invite_only);
        } else if (i == 1) {
            string = getContext().getString(R.string.snippet_community_text_approval_required);
        }
        this.tagline.setText(string);
        this.tagline.setMaxLines(community.shouldShowLock() ? 3 : 2);
        this.lock.setVisibility(community.shouldShowLock() ? 0 : 8);
        ViewUtils.show(this, R.id.member_count_and_language, !community.shouldShowLock());
        this.image.setCommunity(community);
        this.icon.setImageUrl(community.icon);
        this.imageLoadTracker.addImageView(this.image);
        this.imageLoadTracker.addImageView(this.icon);
    }
}
