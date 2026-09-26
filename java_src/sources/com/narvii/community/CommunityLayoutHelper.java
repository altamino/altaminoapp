package com.narvii.community;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageManager;
import com.narvii.lib.R;
import com.narvii.model.Community;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.FlowLayoutHelper;
import com.narvii.util.ViewUtils;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.TopicView;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class CommunityLayoutHelper {

    @NotNull
    private NVContext context;

    @NotNull
    private TopicFlowLayoutHelper<StoryTopic> flowLayoutHelper;

    @NotNull
    private LanguageManager languageManager;

    @Nullable
    private ContentLanguageService languageService;

    @NotNull
    private String localCode;

    public final class TopicFlowLayoutHelper<T> extends FlowLayoutHelper<StoryTopic> {
        public TopicFlowLayoutHelper() {
        }

        @Override // com.narvii.util.FlowLayoutHelper
        @NotNull
        public View createChildView(@Nullable ViewGroup viewGroup) {
            View viewInflate = LayoutInflater.from(CommunityLayoutHelper.this.getContext$Lib_release().getContext()).inflate(R.layout.community_item_topic, viewGroup, false);
            kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
            return viewInflate;
        }

        @Override // com.narvii.util.FlowLayoutHelper
        public void updateChildView(@Nullable View view, @Nullable StoryTopic storyTopic) {
            if (view instanceof TopicView) {
                ((TopicView) view).setTopic(storyTopic);
            }
        }
    }

    public final void configCommunityCard(@NotNull View cell, @Nullable Community community) {
        kotlin.jvm.internal.t.j(cell, "cell");
        configCommunityCard$default(this, cell, community, false, false, null, 28, null);
    }

    @NotNull
    public final NVContext getContext$Lib_release() {
        return this.context;
    }

    @NotNull
    public final TopicFlowLayoutHelper<StoryTopic> getFlowLayoutHelper$Lib_release() {
        return this.flowLayoutHelper;
    }

    @NotNull
    public final LanguageManager getLanguageManager$Lib_release() {
        return this.languageManager;
    }

    @Nullable
    public final ContentLanguageService getLanguageService$Lib_release() {
        return this.languageService;
    }

    @NotNull
    public final String getLocalCode$Lib_release() {
        return this.localCode;
    }

    public final void setContext$Lib_release(@NotNull NVContext nVContext) {
        kotlin.jvm.internal.t.j(nVContext, "<set-?>");
        this.context = nVContext;
    }

    public final void setFlowLayoutHelper$Lib_release(@NotNull TopicFlowLayoutHelper<StoryTopic> topicFlowLayoutHelper) {
        kotlin.jvm.internal.t.j(topicFlowLayoutHelper, "<set-?>");
        this.flowLayoutHelper = topicFlowLayoutHelper;
    }

    public final void setLanguageManager$Lib_release(@NotNull LanguageManager languageManager) {
        kotlin.jvm.internal.t.j(languageManager, "<set-?>");
        this.languageManager = languageManager;
    }

    public final void setLanguageService$Lib_release(@Nullable ContentLanguageService contentLanguageService) {
        this.languageService = contentLanguageService;
    }

    public final void setLocalCode$Lib_release(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<set-?>");
        this.localCode = str;
    }

    public CommunityLayoutHelper(@NotNull NVContext context) {
        String languageShowCode;
        String str;
        kotlin.jvm.internal.t.j(context, "context");
        this.context = context;
        this.flowLayoutHelper = new TopicFlowLayoutHelper<>();
        Object service = this.context.getService("language");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.languageManager = (LanguageManager) service;
        ContentLanguageService contentLanguageService = (ContentLanguageService) this.context.getService("content_language");
        this.languageService = contentLanguageService;
        if (contentLanguageService == null) {
            languageShowCode = Locale.getDefault().getLanguage();
            str = "getLanguage(...)";
        } else {
            kotlin.jvm.internal.t.g(contentLanguageService);
            languageShowCode = contentLanguageService.getLanguageShowCode();
            str = "getLanguageShowCode(...)";
        }
        kotlin.jvm.internal.t.i(languageShowCode, str);
        this.localCode = languageShowCode;
    }

    public static /* synthetic */ void configCommunityCard$default(CommunityLayoutHelper communityLayoutHelper, View view, Community community, boolean z6, boolean z10, NVImageView.OnImageChangedListener onImageChangedListener, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: configCommunityCard");
        }
        boolean z11 = (i10 & 4) != 0 ? false : z6;
        boolean z12 = (i10 & 8) != 0 ? false : z10;
        if ((i10 & 16) != 0) {
            onImageChangedListener = null;
        }
        communityLayoutHelper.configCommunityCard(view, community, z11, z12, onImageChangedListener);
    }

    public final void configCommunityCard(@NotNull View cell, @Nullable Community community, boolean z6) {
        kotlin.jvm.internal.t.j(cell, "cell");
        configCommunityCard$default(this, cell, community, z6, false, null, 24, null);
    }

    public final void configCommunityCard(@NotNull View cell, @Nullable Community community, boolean z6, boolean z10) {
        kotlin.jvm.internal.t.j(cell, "cell");
        configCommunityCard$default(this, cell, community, z6, z10, null, 16, null);
    }

    public void configCommunityCard(@NotNull View cell, @Nullable Community community, boolean z6, boolean z10, @Nullable NVImageView.OnImageChangedListener onImageChangedListener) {
        String string;
        String str;
        String string2;
        Context context;
        String memberCount;
        kotlin.jvm.internal.t.j(cell, "cell");
        NVImageView nVImageView = (NVImageView) cell.findViewById(R.id.community_icon);
        if (nVImageView != null) {
            nVImageView.setImageUrl(community != null ? community.icon : null);
        }
        if (community != null && nVImageView != null) {
            nVImageView.setStrokeColor(community.themeColor());
        }
        TextView textView = (TextView) cell.findViewById(R.id.community_name);
        if (textView != null) {
            textView.setText(community != null ? community.name : null);
        }
        if (textView != null) {
            textView.setTextColor(z6 ? -1 : -16777216);
        }
        if (z10) {
            ViewUtils.setMontserratExtraBoldTypeface(textView);
        }
        TextView textView2 = (TextView) cell.findViewById(R.id.community_language);
        if (textView2 != null) {
            textView2.setTextColor(z6 ? -1 : -16777216);
        }
        if (textView2 != null) {
            String localDisplayText = this.languageManager.getLocalDisplayText(community != null ? community.primaryLanguage : null);
            if (localDisplayText == null) {
                localDisplayText = community != null ? community.primaryLanguage : null;
            }
            textView2.setText(localDisplayText);
        }
        TextView textView3 = (TextView) cell.findViewById(R.id.member_count);
        if (textView3 != null) {
            if (community == null || (memberCount = community.getMemberCount()) == null) {
                memberCount = "";
            }
            textView3.setText(memberCount);
        }
        if (textView3 != null) {
            textView3.setTextColor(z6 ? -1 : -16777216);
        }
        int i10 = 8;
        if (textView3 != null) {
            textView3.setVisibility((community == null || community.membersCount < 20) ? 8 : 0);
        }
        TextView textView4 = (TextView) cell.findViewById(R.id.extra_info);
        if (community == null || community.membersCount <= 20) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(community != null ? community.getMemberCount() : null);
            string = sb.toString();
        }
        if (!TextUtils.isEmpty(string)) {
            string = string + " | ";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(string);
        sb2.append(this.languageManager.getLocalDisplayText(community != null ? community.primaryLanguage : null));
        String string3 = sb2.toString();
        if (textView4 != null) {
            textView4.setText(string3);
        }
        TextView textView5 = (TextView) cell.findViewById(R.id.community_amino_id);
        if (textView5 != null) {
            NVContext nVContext = this.context;
            if (nVContext == null || (context = nVContext.getContext()) == null) {
                string2 = null;
            } else {
                int i11 = R.string.amino_id_with_name;
                Object[] objArr = new Object[1];
                String str2 = community != null ? community.endpoint : null;
                objArr[0] = str2 != null ? str2 : "";
                string2 = context.getString(i11, objArr);
            }
            textView5.setText(string2);
        }
        if (textView5 != null) {
            textView5.setTextColor(z6 ? -1644826 : -16777216);
        }
        TextView textView6 = (TextView) cell.findViewById(R.id.community_description);
        if (textView6 != null) {
            textView6.setText(community != null ? community.tagline : null);
        }
        if (textView6 != null) {
            textView6.setTextColor(z6 ? -1 : -16777216);
        }
        if (textView6 != null) {
            textView6.setVisibility((community == null || (str = community.tagline) == null || str.length() <= 0) ? 4 : 0);
        }
        PromotionalImageView promotionalImageView = (PromotionalImageView) cell.findViewById(R.id.image);
        if (promotionalImageView != null) {
            promotionalImageView.setOnImageChangedListener(onImageChangedListener);
        }
        if (promotionalImageView != null) {
            promotionalImageView.setCommunity(community);
        }
        NVFlowLayout nVFlowLayout = (NVFlowLayout) cell.findViewById(R.id.topic_flow_layout);
        if (nVFlowLayout != null) {
            this.flowLayoutHelper.updateList(nVFlowLayout, community != null ? community.userAddedTopicList : null, 10);
        }
        View viewFindViewById = cell.findViewById(R.id.community_invite_lock);
        if (viewFindViewById == null) {
            return;
        }
        if (community != null && community.shouldShowLock()) {
            i10 = 0;
        }
        viewFindViewById.setVisibility(i10);
    }
}
