package com.narvii.post.entry;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.modulization.entry.EntryEligibleCheckResult;
import com.narvii.modulization.entry.EntryItem;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.modulization.entry.Privilege;
import com.narvii.util.Utils;
import com.narvii.widget.PopButton;
import com.narvii.widget.TintButton;

/* loaded from: classes3.dex */
public class ComposeEntryItem extends FrameLayout {
    private TextView levelNo;
    private TintButton lockView;
    private ImageView plusView;
    private PopButton popButton;
    private TextView tvLabel;

    public ComposeEntryItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.popButton = (PopButton) findViewById(R.id.post_icon);
        this.tvLabel = (TextView) findViewById(R.id.post_label);
        this.lockView = (TintButton) findViewById(R.id.level_lock);
        this.levelNo = (TextView) findViewById(R.id.level_no);
        this.plusView = (ImageView) findViewById(R.id.plus_icon);
    }

    public void setEntryItem(NVContext nVContext, EntryEligibleCheckResult entryEligibleCheckResult, String str, int i) throws Resources.NotFoundException {
        Privilege privilege;
        boolean z = entryEligibleCheckResult.isEligible;
        EntryManager entryManager = new EntryManager(nVContext);
        EntryItem entryItem = EntryManager.getEntryItem(str);
        this.popButton.setImageDrawable(getIconDrawableByEntryItem(str));
        ConfigService configService = (ConfigService) Utils.getNVContext(getContext()).getService("config");
        if (!EntryManager.ENTRY_DRAFT.equals(str)) {
            this.popButton.setBackground(entryItem.getIconBackgroundDrawable(getContext(), ContextCompat.getColor(getContext(), getPostEntryBackgroundColor(str))));
            this.popButton.setTintColor((z || configService.getCommunityId() == 0) ? -1 : 805306368);
        }
        this.tvLabel.setText(getResources().getString(getPostNameByEntryItem(str)));
        if (EntryManager.ENTRY_DRAFT.equals(str) && i > 0) {
            String string = getResources().getString(R.string.post_drafts);
            this.tvLabel.setText(string + " (" + i + ")");
        }
        String[] entryPath = EntryManager.getEntryPath(str);
        int i2 = (entryPath == null || z || (privilege = entryManager.getEntrySetting(entryPath).privilege) == null) ? 0 : privilege.minLevel;
        this.lockView.setVisibility(i2 > 0 ? 0 : 8);
        this.levelNo.setVisibility(i2 <= 0 ? 8 : 0);
        this.levelNo.setText("LV" + i2);
        if (configService.getCommunityId() == 0) {
            if (Utils.isEqualsNotNull(str, EntryManager.ENTRY_POST_PUBLIC_CHATROOMS) || Utils.isEqualsNotNull(str, EntryManager.ENTRY_GO_LIVE)) {
                this.lockView.setVisibility(8);
                this.levelNo.setVisibility(8);
            }
        }
    }

    private Drawable getIconDrawableByEntryItem(String str) {
        int i;
        if (str == null) {
            return null;
        }
        if ("story".equals(str)) {
            i = R.drawable.compose_button_story;
        } else if (EntryManager.ENTRY_POST_PUBLIC_CHATROOMS.equals(str)) {
            i = R.drawable.compose_button_chat;
        } else if (EntryManager.ENTRY_GO_LIVE.equals(str)) {
            i = R.drawable.ic_chat_go_live;
        } else if ("image".equals(str)) {
            i = R.drawable.compose_button_image;
        } else if ("blog".equals(str)) {
            i = R.drawable.compose_button_blog;
        } else if (EntryManager.ENTRY_QUIZZES.equals(str)) {
            i = R.drawable.compose_button_quiz;
        } else if (EntryManager.ENTRY_LINK_POST.equals(str)) {
            i = R.drawable.compose_button_link;
        } else if (EntryManager.ENTRY_POLL.equals(str)) {
            i = R.drawable.compose_button_poll;
        } else if (EntryManager.ENTRY_QUEATION.equals(str)) {
            i = R.drawable.compose_button_question;
        } else if (EntryManager.ENTRY_WIKI.equals(str)) {
            i = R.drawable.compose_button_item;
        } else {
            if (!EntryManager.ENTRY_DRAFT.equals(str)) {
                return null;
            }
            i = R.drawable.ic_draft;
        }
        return ContextCompat.getDrawable(getContext(), i);
    }

    private int getPostNameByEntryItem(String str) {
        return str == null ? R.string.post_entry_new_blog : "story".equals(str) ? R.string.post_entry_new_stroy : EntryManager.ENTRY_POST_PUBLIC_CHATROOMS.equals(str) ? R.string.post_entry_new_chat : EntryManager.ENTRY_GO_LIVE.equals(str) ? R.string.chat_go_live : "image".equals(str) ? R.string.post_entry_new_image : "blog".equals(str) ? R.string.post_entry_new_blog : EntryManager.ENTRY_QUIZZES.equals(str) ? R.string.post_entry_new_quiz : EntryManager.ENTRY_LINK_POST.equals(str) ? R.string.post_entry_new_link : EntryManager.ENTRY_POLL.equals(str) ? R.string.post_entry_new_poll : EntryManager.ENTRY_QUEATION.equals(str) ? R.string.post_entry_new_question : EntryManager.ENTRY_WIKI.equals(str) ? R.string.post_entry_new_item : EntryManager.ENTRY_DRAFT.equals(str) ? R.string.post_drafts : R.string.post_entry_new_blog;
    }

    private int getPostEntryBackgroundColor(String str) {
        return str == null ? R.color.page_blog : "story".equals(str) ? R.color.story_theme_color : EntryManager.ENTRY_POST_PUBLIC_CHATROOMS.equals(str) ? R.color.chat_theme_color : EntryManager.ENTRY_GO_LIVE.equals(str) ? R.color.go_live_theme_color : "image".equals(str) ? R.color.page_image_post : "blog".equals(str) ? R.color.page_blog : EntryManager.ENTRY_QUIZZES.equals(str) ? R.color.page_quizzes : EntryManager.ENTRY_LINK_POST.equals(str) ? R.color.page_link_post : EntryManager.ENTRY_POLL.equals(str) ? R.color.page_poll : EntryManager.ENTRY_QUEATION.equals(str) ? R.color.page_question : EntryManager.ENTRY_WIKI.equals(str) ? R.color.page_wiki : EntryManager.ENTRY_DRAFT.equals(str) ? R.color.page_draft : R.color.page_blog;
    }
}
