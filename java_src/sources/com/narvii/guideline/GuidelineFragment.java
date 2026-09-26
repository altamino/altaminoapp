package com.narvii.guideline;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class GuidelineFragment extends NVListFragment {
    static final DetailAdapter.CellType COMMUNITY_GUIDE_TITLE = new DetailAdapter.CellType("guideline.title", false);
    static final DetailAdapter.CellType OFFICAL_GUIDE_TITLE = new DetailAdapter.CellType("official.guideline.title", false);
    OfficialGuideAdapter communityGuideAdapter;
    private boolean communityGuideFinished;
    private CommunityGuideLineResponse communityResponse;
    private int mCid;
    private boolean onlyShowCommunity;

    class OfficialGuideAdapter extends DetailAdapter<CommunityGuideline, OfficialGuidelineResponse> {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends CommunityGuideline> objectType() {
            return CommunityGuideline.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<? extends OfficialGuidelineResponse> responseType() {
            return OfficialGuidelineResponse.class;
        }

        public OfficialGuideAdapter() {
            super(GuidelineFragment.this);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(GuidelineFragment.this.mCid);
            String language = Locale.getDefault().getLanguage();
            if (community != null) {
                language = community.primaryLanguage;
            }
            return new ApiRequest.Builder().path("/community/official-guideline").param("language", language).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            if (obj == GuidelineFragment.COMMUNITY_GUIDE_TITLE) {
                return (TextView) createView(R.layout.community_guideline_header, viewGroup, view);
            }
            if (obj != GuidelineFragment.OFFICAL_GUIDE_TITLE) {
                return super.getCell(obj, view, viewGroup);
            }
            TextView textView = (TextView) createView(R.layout.community_guideline_header, viewGroup, view);
            textView.setText(GuidelineFragment.this.getString(R.string.guidelines_offical));
            return textView;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003e  */
        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            int iIndexOf;
            if (obj instanceof Media) {
                CommunityGuideline communityGuideline = GuidelineFragment.this.communityResponse == null ? null : GuidelineFragment.this.communityResponse.communityGuideline;
                if (communityGuideline == null) {
                    return true;
                }
                List<Media> list = communityGuideline.mediaList;
                if (list != null && (iIndexOf = list.indexOf(obj)) != -1) {
                    if (obj != null) {
                        Media media = (Media) obj;
                        if (media.isVideo()) {
                            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, NVFullScreenVideoActivity.intent(media, getObject(), (Class<? extends NVFragment>) OptionMenuFragment.class));
                        } else {
                            Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                            intent.putExtra("list", JacksonUtils.writeAsString(list));
                            intent.putExtra("position", iIndexOf);
                            intent.putExtra("parent", JacksonUtils.writeAsString(obj));
                            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                        }
                    } else {
                        Intent intent2 = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                        intent2.putExtra("list", JacksonUtils.writeAsString(list));
                        intent2.putExtra("position", iIndexOf);
                        intent2.putExtra("parent", JacksonUtils.writeAsString(obj));
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                    }
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(CommunityGuideline communityGuideline) {
            OfficialGuidelineResponse officialGuidelineResponse = new OfficialGuidelineResponse();
            officialGuidelineResponse.officialGuideline = communityGuideline;
            setResponse(officialGuidelineResponse);
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
            if (communityGuideline != null && !TextUtils.isEmpty(communityGuideline.content)) {
                ArrayList arrayList2 = new ArrayList();
                splitSegments(communityGuideline.content, communityGuideline.mediaList, list, arrayList2);
                if (arrayList2.size() > 0) {
                    list.addAll(arrayList2);
                }
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        public View createMediaView(Media media, View view, ViewGroup viewGroup) {
            View viewCreateMediaView = super.createMediaView(media, view, viewGroup);
            NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, media, (Media) null, (NVObject) getObject(), 0, true);
            return viewCreateMediaView;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(GuidelineFragment.COMMUNITY_GUIDE_TITLE);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (super.isEmpty() && GuidelineFragment.this.communityGuideFinished) {
                return true;
            }
            return false;
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    private void requestCommunityGuideline() {
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/community/guideline").communityId(this.mCid).build(), new ApiResponseListener<CommunityGuideLineResponse>(CommunityGuideLineResponse.class) { // from class: com.narvii.guideline.GuidelineFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityGuideLineResponse communityGuideLineResponse) throws Exception {
                super.onFinish(apiRequest, communityGuideLineResponse);
                GuidelineFragment.this.communityGuideFinished = true;
                GuidelineFragment.this.communityResponse = communityGuideLineResponse;
                GuidelineFragment.this.communityGuideAdapter.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        OfficialGuideAdapter officialGuideAdapter = new OfficialGuideAdapter();
        this.communityGuideAdapter = officialGuideAdapter;
        return officialGuideAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int communityId = ((ConfigService) getService("config")).getCommunityId();
        this.mCid = communityId;
        if (communityId == 0) {
            this.mCid = getIntParam("id");
        }
        if (!TextUtils.isEmpty(getStringParam("title"))) {
            setTitle(getStringParam("title"));
        } else {
            setTitle(getString(R.string.main_drawer_community_guidelines));
        }
        this.onlyShowCommunity = getBooleanParam("onlyShowCommunity");
        requestCommunityGuideline();
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Community Guidelines Page Opened").userPropInc("Community Guideline Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }
}
