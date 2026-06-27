package com.narvii.community;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageManager;
import com.narvii.lib.R;
import com.narvii.model.Community;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.FlowLayoutHelper;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TopicView;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: CommunityLayoutHelper.kt */
/* loaded from: classes2.dex */
public class CommunityLayoutHelper {
    private NVContext context;
    private TopicFlowLayoutHelper<StoryTopic> flowLayoutHelper;
    private LanguageManager languageManager;
    private ContentLanguageService languageService;
    private String localCode;

    public void configCommunityCard(View view, Community community) {
        configCommunityCard$default(this, view, community, false, false, null, 28, null);
    }

    public void configCommunityCard(View view, Community community, boolean z) {
        configCommunityCard$default(this, view, community, z, false, null, 24, null);
    }

    public void configCommunityCard(View view, Community community, boolean z, boolean z2) {
        configCommunityCard$default(this, view, community, z, z2, null, 16, null);
    }

    public CommunityLayoutHelper(NVContext context) {
        String languageShowCode;
        String str;
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        this.flowLayoutHelper = new TopicFlowLayoutHelper<>();
        Object service = this.context.getService(IjkMediaMeta.IJKM_KEY_LANGUAGE);
        Intrinsics.checkExpressionValueIsNotNull(service, "context.getService(\"language\")");
        this.languageManager = (LanguageManager) service;
        this.languageService = (ContentLanguageService) this.context.getService("content_language");
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService == null) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.getDefault()");
            languageShowCode = locale.getLanguage();
            str = "Locale.getDefault().language";
        } else {
            if (contentLanguageService == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            languageShowCode = contentLanguageService.getLanguageShowCode();
            str = "languageService!!.languageShowCode";
        }
        Intrinsics.checkExpressionValueIsNotNull(languageShowCode, str);
        this.localCode = languageShowCode;
    }

    public final NVContext getContext$Lib_release() {
        return this.context;
    }

    public final void setContext$Lib_release(NVContext nVContext) {
        Intrinsics.checkParameterIsNotNull(nVContext, "<set-?>");
        this.context = nVContext;
    }

    public final LanguageManager getLanguageManager$Lib_release() {
        return this.languageManager;
    }

    public final void setLanguageManager$Lib_release(LanguageManager languageManager) {
        Intrinsics.checkParameterIsNotNull(languageManager, "<set-?>");
        this.languageManager = languageManager;
    }

    public final TopicFlowLayoutHelper<StoryTopic> getFlowLayoutHelper$Lib_release() {
        return this.flowLayoutHelper;
    }

    public final void setFlowLayoutHelper$Lib_release(TopicFlowLayoutHelper<StoryTopic> topicFlowLayoutHelper) {
        Intrinsics.checkParameterIsNotNull(topicFlowLayoutHelper, "<set-?>");
        this.flowLayoutHelper = topicFlowLayoutHelper;
    }

    public final ContentLanguageService getLanguageService$Lib_release() {
        return this.languageService;
    }

    public final void setLanguageService$Lib_release(ContentLanguageService contentLanguageService) {
        this.languageService = contentLanguageService;
    }

    public final String getLocalCode$Lib_release() {
        return this.localCode;
    }

    public final void setLocalCode$Lib_release(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.localCode = str;
    }

    /* compiled from: CommunityLayoutHelper.kt */
    public final class TopicFlowLayoutHelper<T> extends FlowLayoutHelper<StoryTopic> {
        public TopicFlowLayoutHelper() {
        }

        @Override // com.narvii.util.FlowLayoutHelper
        public View createChildView(ViewGroup viewGroup) {
            View viewInflate = LayoutInflater.from(CommunityLayoutHelper.this.getContext$Lib_release().getContext()).inflate(R.layout.community_item_topic, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(cont…tem_topic, parent, false)");
            return viewInflate;
        }

        @Override // com.narvii.util.FlowLayoutHelper
        public void updateChildView(View view, StoryTopic storyTopic) {
            if (view instanceof TopicView) {
                ((TopicView) view).setTopic(storyTopic);
            }
        }
    }

    public static /* synthetic */ void configCommunityCard$default(CommunityLayoutHelper communityLayoutHelper, View view, Community community, boolean z, boolean z2, NVImageView.OnImageChangedListener onImageChangedListener, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: configCommunityCard");
        }
        boolean z3 = (i & 4) != 0 ? false : z;
        boolean z4 = (i & 8) != 0 ? false : z2;
        if ((i & 16) != 0) {
            onImageChangedListener = null;
        }
        communityLayoutHelper.configCommunityCard(view, community, z3, z4, onImageChangedListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x0163  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void configCommunityCard(android.view.View r16, com.narvii.model.Community r17, boolean r18, boolean r19, com.narvii.widget.NVImageView.OnImageChangedListener r20) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.community.CommunityLayoutHelper.configCommunityCard(android.view.View, com.narvii.model.Community, boolean, boolean, com.narvii.widget.NVImageView$OnImageChangedListener):void");
    }
}
