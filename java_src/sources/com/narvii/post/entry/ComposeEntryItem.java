package com.narvii.post.entry;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.modulization.entry.EntryEligibleCheckResult;
import com.narvii.modulization.entry.EntryItem;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.modulization.entry.Privilege;
import com.narvii.util.Utils;
import com.narvii.widget.PopButton;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public class ComposeEntryItem extends FrameLayout {
    private TextView levelNo;
    private TintButton lockView;
    private ImageView plusView;
    private PopButton popButton;
    private TextView tvLabel;

    private Drawable getIconDrawableByEntryItem(String str) {
        int i10;
        if (str == null) {
            return null;
        }
        switch (str) {
            case "post_publicChat":
                i10 = R.drawable.compose_button_chat;
                break;
            case "question":
                i10 = R.drawable.compose_button_question;
                break;
            case "blog":
                i10 = R.drawable.compose_button_blog;
                break;
            case "poll":
                i10 = R.drawable.compose_button_poll;
                break;
            case "quiz":
                i10 = R.drawable.compose_button_quiz;
                break;
            case "draft":
                i10 = R.drawable.ic_draft;
                break;
            case "image":
                i10 = R.drawable.compose_button_image;
                break;
            case "go_live":
                i10 = R.drawable.ic_chat_go_live;
                break;
            case "webLink":
                i10 = R.drawable.compose_button_link;
                break;
            case "wikiEntry":
                i10 = R.drawable.compose_button_item;
                break;
            default:
                return null;
        }
        return ContextCompat.getDrawable(getContext(), i10);
    }

    public void setEntryItem(NVContext nVContext, EntryEligibleCheckResult entryEligibleCheckResult, String str, int i10) {
        Privilege privilege;
        boolean z6 = entryEligibleCheckResult.isEligible;
        EntryManager entryManager = new EntryManager(nVContext);
        EntryItem entryItem = EntryManager.getEntryItem(str);
        this.popButton.setImageDrawable(getIconDrawableByEntryItem(str));
        ConfigService configService = (ConfigService) Utils.getNVContext(getContext()).getService("config");
        if (!EntryManager.ENTRY_DRAFT.equals(str)) {
            this.popButton.setBackground(entryItem.getIconBackgroundDrawable(getContext(), ContextCompat.getColor(getContext(), getPostEntryBackgroundColor(str))));
            this.popButton.setTintColor((z6 || configService.getCommunityId() == 0) ? -1 : 805306368);
        }
        this.tvLabel.setText(getResources().getString(getPostNameByEntryItem(str)));
        if (EntryManager.ENTRY_DRAFT.equals(str) && i10 > 0) {
            String string = getResources().getString(R.string.post_drafts);
            this.tvLabel.setText(string + " (" + i10 + ")");
        }
        String[] entryPath = EntryManager.getEntryPath(str);
        int i11 = (entryPath == null || z6 || (privilege = entryManager.getEntrySetting(entryPath).privilege) == null) ? 0 : privilege.minLevel;
        this.lockView.setVisibility(i11 > 0 ? 0 : 8);
        this.levelNo.setVisibility(i11 <= 0 ? 8 : 0);
        this.levelNo.setText("LV" + i11);
        if (configService.getCommunityId() == 0) {
            if (Utils.isEqualsNotNull(str, EntryManager.ENTRY_POST_PUBLIC_CHATROOMS) || Utils.isEqualsNotNull(str, EntryManager.ENTRY_GO_LIVE)) {
                this.lockView.setVisibility(8);
                this.levelNo.setVisibility(8);
            }
        }
    }

    public ComposeEntryItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int getPostEntryBackgroundColor(String str) {
        if (str == null) {
            return R.color.page_blog;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case -1830914464:
                if (str.equals(EntryManager.ENTRY_POST_PUBLIC_CHATROOMS)) {
                    b7 = 0;
                }
                break;
            case -1165870106:
                if (str.equals("question")) {
                    b7 = 1;
                }
                break;
            case 3026850:
                if (str.equals("blog")) {
                    b7 = 2;
                }
                break;
            case 3446719:
                if (str.equals(EntryManager.ENTRY_POLL)) {
                    b7 = 3;
                }
                break;
            case 3482197:
                if (str.equals("quiz")) {
                    b7 = 4;
                }
                break;
            case 95844769:
                if (str.equals(EntryManager.ENTRY_DRAFT)) {
                    b7 = 5;
                }
                break;
            case 100313435:
                if (str.equals("image")) {
                    b7 = 6;
                }
                break;
            case 192490979:
                if (str.equals(EntryManager.ENTRY_GO_LIVE)) {
                    b7 = 7;
                }
                break;
            case 1223173486:
                if (str.equals(EntryManager.ENTRY_LINK_POST)) {
                    b7 = 8;
                }
                break;
            case 1519564450:
                if (str.equals(EntryManager.ENTRY_WIKI)) {
                    b7 = 9;
                }
                break;
        }
        switch (b7) {
            case 0:
                return R.color.chat_theme_color;
            case 1:
                return R.color.page_question;
            case 2:
            default:
                return R.color.page_blog;
            case 3:
                return R.color.page_poll;
            case 4:
                return R.color.page_quizzes;
            case 5:
                return R.color.page_draft;
            case 6:
                return R.color.page_image_post;
            case 7:
                return R.color.go_live_theme_color;
            case 8:
                return R.color.page_link_post;
            case 9:
                return R.color.page_wiki;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int getPostNameByEntryItem(String str) {
        if (str == null) {
            return R.string.post_entry_new_blog;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case -1830914464:
                if (str.equals(EntryManager.ENTRY_POST_PUBLIC_CHATROOMS)) {
                    b7 = 0;
                }
                break;
            case -1165870106:
                if (str.equals("question")) {
                    b7 = 1;
                }
                break;
            case 3026850:
                if (str.equals("blog")) {
                    b7 = 2;
                }
                break;
            case 3446719:
                if (str.equals(EntryManager.ENTRY_POLL)) {
                    b7 = 3;
                }
                break;
            case 3482197:
                if (str.equals("quiz")) {
                    b7 = 4;
                }
                break;
            case 95844769:
                if (str.equals(EntryManager.ENTRY_DRAFT)) {
                    b7 = 5;
                }
                break;
            case 100313435:
                if (str.equals("image")) {
                    b7 = 6;
                }
                break;
            case 192490979:
                if (str.equals(EntryManager.ENTRY_GO_LIVE)) {
                    b7 = 7;
                }
                break;
            case 1223173486:
                if (str.equals(EntryManager.ENTRY_LINK_POST)) {
                    b7 = 8;
                }
                break;
            case 1519564450:
                if (str.equals(EntryManager.ENTRY_WIKI)) {
                    b7 = 9;
                }
                break;
        }
        switch (b7) {
            case 0:
                return R.string.post_entry_new_chat;
            case 1:
                return R.string.post_entry_new_question;
            case 2:
            default:
                return R.string.post_entry_new_blog;
            case 3:
                return R.string.post_entry_new_poll;
            case 4:
                return R.string.post_entry_new_quiz;
            case 5:
                return R.string.post_drafts;
            case 6:
                return R.string.post_entry_new_image;
            case 7:
                return R.string.chat_go_live;
            case 8:
                return R.string.post_entry_new_link;
            case 9:
                return R.string.post_entry_new_item;
        }
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
}
