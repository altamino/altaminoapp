package com.narvii.guideline;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public class GuidelineFragment extends NVListFragment {
    static final DetailAdapter.CellType COMMUNITY_GUIDE_TITLE = new DetailAdapter.CellType("guideline.title", false);
    static final DetailAdapter.CellType OFFICAL_GUIDE_TITLE = new DetailAdapter.CellType("official.guideline.title", false);
    OfficialGuideAdapter communityGuideAdapter;
    private boolean communityGuideFinished;
    private CommunityGuideLineResponse communityResponse;
    private int mCid;
    private boolean onlyShowCommunity;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mCid = ((ConfigService) getService("config")).getCommunityId();
        if (this.mCid == 0) {
            this.mCid = getIntParam("id");
        }
        if (!TextUtils.isEmpty(getStringParam("title"))) {
            setTitle(getStringParam("title"));
        } else {
            setTitle(getString(R.string.main_drawer_community_guidelines));
        }
        this.onlyShowCommunity = getBooleanParam("onlyShowCommunity");
        requestCommunityGuideline();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    private void requestCommunityGuideline() {
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/community/guideline").communityId(this.mCid).build(), new ApiResponseListener<CommunityGuideLineResponse>(CommunityGuideLineResponse.class) { // from class: com.narvii.guideline.GuidelineFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityGuideLineResponse communityGuideLineResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) communityGuideLineResponse);
                GuidelineFragment.this.communityGuideFinished = true;
                GuidelineFragment.this.communityResponse = communityGuideLineResponse;
                GuidelineFragment.this.communityGuideAdapter.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.communityGuideAdapter = new OfficialGuideAdapter();
        return this.communityGuideAdapter;
    }

    class OfficialGuideAdapter extends DetailAdapter<CommunityGuideline, OfficialGuidelineResponse> {
        public OfficialGuideAdapter() {
            super(GuidelineFragment.this);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty() && GuidelineFragment.this.communityGuideFinished;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(CommunityGuideline communityGuideline) {
            OfficialGuidelineResponse officialGuidelineResponse = new OfficialGuidelineResponse();
            officialGuidelineResponse.officialGuideline = communityGuideline;
            setResponse(officialGuidelineResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends CommunityGuideline> objectType() {
            return CommunityGuideline.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<? extends OfficialGuidelineResponse> responseType() {
            return OfficialGuidelineResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            Community community = ((CommunityService) getService("community")).getCommunity(GuidelineFragment.this.mCid);
            String language = Locale.getDefault().getLanguage();
            if (community != null) {
                language = community.primaryLanguage;
            }
            return new ApiRequest.Builder().path("/community/official-guideline").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, language).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        public View createMediaView(Media media, View view, ViewGroup viewGroup) {
            View viewCreateMediaView = super.createMediaView(media, view, viewGroup);
            NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, media, (Media) null, (NVObject) getObject(), 0, true);
            return viewCreateMediaView;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            CommunityGuideline communityGuideline = (CommunityGuideline) getObject();
            if (!GuidelineFragment.this.onlyShowCommunity && GuidelineFragment.this.communityGuideFinished && GuidelineFragment.this.communityResponse != null && GuidelineFragment.this.communityResponse.communityGuideline != null && !TextUtils.isEmpty(GuidelineFragment.this.communityResponse.communityGuideline.content)) {
                CommunityGuideline communityGuideline2 = GuidelineFragment.this.communityResponse.communityGuideline;
                list.add(GuidelineFragment.COMMUNITY_GUIDE_TITLE);
                ArrayList arrayList = new ArrayList();
                splitSegments(communityGuideline2.content, communityGuideline2.mediaList, list, arrayList);
                if (arrayList.size() > 0) {
                    list.addAll(arrayList);
                }
            }
            if (list.size() != 0) {
                list.add(DetailAdapter.DIVIDER);
            }
            if (communityGuideline == null || TextUtils.isEmpty(communityGuideline.content)) {
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            splitSegments(communityGuideline.content, communityGuideline.mediaList, list, arrayList2);
            if (arrayList2.size() > 0) {
                list.addAll(arrayList2);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(GuidelineFragment.COMMUNITY_GUIDE_TITLE);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            if (obj == GuidelineFragment.COMMUNITY_GUIDE_TITLE) {
                return (TextView) createView(R.layout.community_guideline_header, viewGroup, view);
            }
            if (obj == GuidelineFragment.OFFICAL_GUIDE_TITLE) {
                TextView textView = (TextView) createView(R.layout.community_guideline_header, viewGroup, view);
                textView.setText(GuidelineFragment.this.getString(R.string.guidelines_offical));
                return textView;
            }
            return super.getCell(obj, view, viewGroup);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onItemClick(android.widget.ListAdapter r5, int r6, java.lang.Object r7, android.view.View r8, android.view.View r9) {
            /*
                r4 = this;
                boolean r0 = r7 instanceof com.narvii.model.Media
                if (r0 == 0) goto L64
                com.narvii.guideline.GuidelineFragment r0 = com.narvii.guideline.GuidelineFragment.this
                com.narvii.guideline.CommunityGuideLineResponse r0 = com.narvii.guideline.GuidelineFragment.access$100(r0)
                if (r0 != 0) goto Le
                r0 = 0
                goto L16
            Le:
                com.narvii.guideline.GuidelineFragment r0 = com.narvii.guideline.GuidelineFragment.this
                com.narvii.guideline.CommunityGuideLineResponse r0 = com.narvii.guideline.GuidelineFragment.access$100(r0)
                com.narvii.guideline.CommunityGuideline r0 = r0.communityGuideline
            L16:
                r1 = 1
                if (r0 != 0) goto L1a
                return r1
            L1a:
                java.util.List<com.narvii.model.Media> r0 = r0.mediaList
                if (r0 == 0) goto L64
                int r2 = r0.indexOf(r7)
                r3 = -1
                if (r2 == r3) goto L64
                if (r7 == 0) goto L3e
                r5 = r7
                com.narvii.model.Media r5 = (com.narvii.model.Media) r5
                boolean r6 = r5.isVideo()
                if (r6 == 0) goto L3e
                com.narvii.model.NVObject r6 = r4.getObject()
                java.lang.Class<com.narvii.optionmenu.OptionMenuFragment> r7 = com.narvii.optionmenu.OptionMenuFragment.class
                android.content.Intent r5 = com.narvii.video.NVFullScreenVideoActivity.intent(r5, r6, r7)
                r4.startActivity(r5)
                goto L63
            L3e:
                android.content.Intent r5 = new android.content.Intent
                android.content.Context r6 = r4.getContext()
                java.lang.Class<com.narvii.media.MediaGalleryOptionActivity> r8 = com.narvii.media.MediaGalleryOptionActivity.class
                r5.<init>(r6, r8)
                java.lang.String r6 = com.narvii.util.JacksonUtils.writeAsString(r0)
                java.lang.String r8 = "list"
                r5.putExtra(r8, r6)
                java.lang.String r6 = "position"
                r5.putExtra(r6, r2)
                java.lang.String r6 = com.narvii.util.JacksonUtils.writeAsString(r7)
                java.lang.String r7 = "parent"
                r5.putExtra(r7, r6)
                r4.startActivity(r5)
            L63:
                return r1
            L64:
                boolean r5 = super.onItemClick(r5, r6, r7, r8, r9)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.guideline.GuidelineFragment.OfficialGuideAdapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }
}
