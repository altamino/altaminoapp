package com.narvii.link;

import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.community.FullCommunityResponse;
import com.narvii.config.ConfigService;
import com.narvii.link.snippet.CommunityLinkSnippet;
import com.narvii.link.snippet.ExternalLinkSnippet;
import com.narvii.link.snippet.LinkSnippet;
import com.narvii.link.snippet.NVLinkSnippet;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.model.Community;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.share.LinkInfo;
import com.narvii.share.LinkInfoV2;
import com.narvii.share.LinkV2TranslationResponse;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.crawler.LinkPreviewCallback;
import com.narvii.util.crawler.SourceContent;
import com.narvii.util.crawler.TextCrawler;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class LinkSnippetHelper {
    LinkSnippet linkSnippet;
    NVContext nvContext;
    PackageUtils pu;
    LinkSnippetListener snippetListener;
    Runnable timeoutRunnable = new Runnable() { // from class: com.narvii.link.LinkSnippetHelper.1
        @Override // java.lang.Runnable
        public void run() {
            LinkSnippetListener linkSnippetListener = LinkSnippetHelper.this.snippetListener;
            if (linkSnippetListener == null || linkSnippetListener.isFinished()) {
                return;
            }
            LinkSnippetHelper linkSnippetHelper = LinkSnippetHelper.this;
            if (linkSnippetHelper.linkSnippet == null) {
                linkSnippetHelper.notifyFail();
            } else {
                Log.i("linkSnippet", "timeout");
                LinkSnippetHelper.this.linkSnippet.returnSnippetMediaImmediately();
            }
        }
    };
    String url;

    public LinkSnippetHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.pu = new PackageUtils(nVContext.getContext());
    }

    public void removeTimeoutRunnable() {
        Utils.handler.removeCallbacks(this.timeoutRunnable);
    }

    public void getLinkSnippet(final String str, final LinkSnippetListener linkSnippetListener) {
        Utils.handler.postDelayed(this.timeoutRunnable, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        this.url = str;
        this.snippetListener = linkSnippetListener;
        if (str == null) {
            notifyFail(0);
            return;
        }
        if (ForwardActivity.translateLinkQuery(str) != null) {
            startLinkTranslation(str, new AnonymousClass2(LinkV2TranslationResponse.class, linkSnippetListener));
            return;
        }
        if (ForwardActivity.isInviteLink(str) || ForwardActivity.isCommunityLink(str)) {
            ((ApiService) NVApplication.instance().getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", str).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.link.LinkSnippetHelper.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                    Community community = communityInviteResponse.community;
                    if (community == null) {
                        LinkSnippetHelper.this.notifyFail();
                        return;
                    }
                    if (!communityInviteResponse.isCurrentUserJoined && community.joinType != 0) {
                        LinkSnippetHelper.this.notifyFail();
                        return;
                    }
                    LinkSnippetHelper linkSnippetHelper = LinkSnippetHelper.this;
                    linkSnippetHelper.linkSnippet = new CommunityLinkSnippet(linkSnippetHelper.nvContext, communityInviteResponse.community);
                    LinkSnippetHelper.this.linkSnippet.getSnippetMedia(new Callback<Media>() { // from class: com.narvii.link.LinkSnippetHelper.3.1
                        @Override // com.narvii.util.Callback
                        public void call(Media media) {
                            LinkSnippetListener linkSnippetListener2 = linkSnippetListener;
                            if (linkSnippetListener2 != null) {
                                linkSnippetListener2.onFinish(media);
                            }
                        }
                    });
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    LinkSnippetHelper.this.notifyFail(3);
                }
            });
        } else if (str.toLowerCase(Locale.US).startsWith("http://") || str.toLowerCase(Locale.US).startsWith("https://")) {
            new TextCrawler(this.nvContext).makePreview(new LinkPreviewCallback() { // from class: com.narvii.link.LinkSnippetHelper.4
                @Override // com.narvii.util.crawler.LinkPreviewCallback
                public void onPre() {
                }

                @Override // com.narvii.util.crawler.LinkPreviewCallback
                public void onPos(SourceContent sourceContent, boolean z) {
                    if (TextUtils.isEmpty(sourceContent.getFinalUrl()) || z) {
                        LinkSnippetHelper.this.notifyFail(4);
                        return;
                    }
                    LinkSummary linkSummary = new LinkSummary(sourceContent);
                    String str2 = str;
                    if (str2 != null) {
                        linkSummary.setLink(TextCrawler.extendedTrim(str2));
                    }
                    LinkSnippetHelper linkSnippetHelper = LinkSnippetHelper.this;
                    linkSnippetHelper.linkSnippet = new ExternalLinkSnippet(linkSnippetHelper.nvContext, linkSummary);
                    LinkSnippetHelper.this.linkSnippet.getSnippetMedia(new Callback<Media>() { // from class: com.narvii.link.LinkSnippetHelper.4.1
                        @Override // com.narvii.util.Callback
                        public void call(Media media) {
                            LinkSnippetListener linkSnippetListener2 = linkSnippetListener;
                            if (linkSnippetListener2 != null) {
                                linkSnippetListener2.onFinish(media);
                            }
                        }
                    });
                }
            }, str);
        } else {
            notifyFail();
        }
    }

    /* renamed from: com.narvii.link.LinkSnippetHelper$2, reason: invalid class name */
    class AnonymousClass2 extends ApiResponseListener<LinkV2TranslationResponse> {
        final /* synthetic */ LinkSnippetListener val$snippetListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Class cls, LinkSnippetListener linkSnippetListener) {
            super(cls);
            this.val$snippetListener = linkSnippetListener;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            LinkSnippetHelper.this.notifyFail(1);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, LinkV2TranslationResponse linkV2TranslationResponse) throws Exception {
            LinkInfoV2 linkInfoV2;
            super.onFinish(apiRequest, (ApiRequest) linkV2TranslationResponse);
            LinkInfo innerLinkInfo = (linkV2TranslationResponse == null || (linkInfoV2 = linkV2TranslationResponse.linkInfoV2) == null) ? null : linkInfoV2.getInnerLinkInfo();
            if (innerLinkInfo == null) {
                LinkSnippetHelper.this.notifyFail();
                return;
            }
            LinkSnippetHelper linkSnippetHelper = LinkSnippetHelper.this;
            linkSnippetHelper.linkSnippet = LinkSnippetFactory.getLinkSnippet(linkSnippetHelper.nvContext, innerLinkInfo);
            LinkSnippetHelper linkSnippetHelper2 = LinkSnippetHelper.this;
            if (linkSnippetHelper2.linkSnippet == null) {
                linkSnippetHelper2.notifyFail(2);
                return;
            }
            int i = innerLinkInfo.ndcId;
            int communityId = ((ConfigService) linkSnippetHelper2.nvContext.getService("config")).getCommunityId();
            if (i == 0 || i == communityId) {
                LinkSnippetHelper.this.linkSnippet.getSnippetMedia(new Callback<Media>() { // from class: com.narvii.link.LinkSnippetHelper.2.1
                    @Override // com.narvii.util.Callback
                    public void call(Media media) {
                        LinkSnippetListener linkSnippetListener = AnonymousClass2.this.val$snippetListener;
                        if (linkSnippetListener != null) {
                            linkSnippetListener.onFinish(media);
                        }
                    }
                });
                return;
            }
            Community community = ((CommunityService) LinkSnippetHelper.this.nvContext.getService("community")).getCommunity(i);
            if (community != null && community.configuration != null) {
                boolean z = true;
                if (community.joinType != 0 && !((AffiliationsService) LinkSnippetHelper.this.nvContext.getService("affiliations")).contains(i)) {
                    z = false;
                }
                if (!z) {
                    LinkSnippetHelper.this.notifyFail();
                    return;
                }
                LinkSnippet linkSnippet = LinkSnippetHelper.this.linkSnippet;
                if (linkSnippet instanceof NVLinkSnippet) {
                    ((NVLinkSnippet) linkSnippet).setOtherCommunity(community);
                }
                LinkSnippetHelper.this.linkSnippet.getSnippetMedia(new Callback<Media>() { // from class: com.narvii.link.LinkSnippetHelper.2.2
                    @Override // com.narvii.util.Callback
                    public void call(Media media) {
                        LinkSnippetListener linkSnippetListener = AnonymousClass2.this.val$snippetListener;
                        if (linkSnippetListener != null) {
                            linkSnippetListener.onFinish(media);
                        }
                    }
                });
                return;
            }
            ((ApiService) LinkSnippetHelper.this.nvContext.getService("api")).exec(ApiRequest.builder().scopeCommunityId(i).path("/community/info").build(), new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.link.LinkSnippetHelper.2.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest2, FullCommunityResponse fullCommunityResponse) throws Exception {
                    super.onFinish(apiRequest2, (ApiRequest) fullCommunityResponse);
                    LinkSnippet linkSnippet2 = LinkSnippetHelper.this.linkSnippet;
                    if (linkSnippet2 instanceof NVLinkSnippet) {
                        ((NVLinkSnippet) linkSnippet2).setOtherCommunity(fullCommunityResponse.community);
                    }
                    Community community2 = fullCommunityResponse.community;
                    if (community2 == null || (!fullCommunityResponse.isCurrentUserJoined && community2.joinType != 0)) {
                        LinkSnippetHelper.this.notifyFail();
                    } else {
                        LinkSnippetHelper.this.linkSnippet.getSnippetMedia(new Callback<Media>() { // from class: com.narvii.link.LinkSnippetHelper.2.3.1
                            @Override // com.narvii.util.Callback
                            public void call(Media media) {
                                LinkSnippetListener linkSnippetListener = AnonymousClass2.this.val$snippetListener;
                                if (linkSnippetListener != null) {
                                    linkSnippetListener.onFinish(media);
                                }
                            }
                        });
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest2, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest2, i2, list, str, apiResponse, th);
                    LinkSnippetHelper.this.notifyFail();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFail() {
        notifyFail(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFail(int i) {
        Log.i("linkSnippet", i + "");
        LinkSnippetListener linkSnippetListener = this.snippetListener;
        if (linkSnippetListener != null) {
            linkSnippetListener.onFinish(null);
        }
    }

    private void startLinkTranslation(String str, ApiResponseListener<LinkV2TranslationResponse> apiResponseListener) {
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().global().path("/link-resolution").param("q", str).build(), apiResponseListener);
    }
}
