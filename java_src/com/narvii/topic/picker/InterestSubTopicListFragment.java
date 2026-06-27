package com.narvii.topic.picker;

import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.app.NVContext;
import com.narvii.list.NVListFragment;
import com.narvii.topic.adapter.TopicListAdapter;
import com.narvii.util.http.ApiRequest;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InterestSubTopicListFragment.kt */
/* loaded from: classes3.dex */
public final class InterestSubTopicListFragment extends NVListFragment {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_INTEREST_ID = "key_interest_id";
    private HashMap _$_findViewCache;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "TopicCategory";
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* compiled from: InterestSubTopicListFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        ListView listView2 = getListView();
        if (listView2 != null) {
            listView2.setDivider(null);
        }
        ListView listView3 = getListView();
        if (listView3 != null) {
            listView3.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new TopicAdapter(this, this);
    }

    /* compiled from: InterestSubTopicListFragment.kt */
    public final class TopicAdapter extends TopicListAdapter {
        final /* synthetic */ InterestSubTopicListFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "TopicList";
        }

        @Override // com.narvii.topic.adapter.TopicListAdapter
        public boolean showRightChevron() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicAdapter(InterestSubTopicListFragment interestSubTopicListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = interestSubTopicListFragment;
        }

        @Override // com.narvii.topic.adapter.TopicListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest apiRequestBuild = new ApiRequest.Builder().global().path("/interest/" + this.this$0.getStringParam(InterestSubTopicListFragment.KEY_INTEREST_ID) + "/topics").build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "ApiRequest.Builder()\n   …                 .build()");
            return apiRequestBuild;
        }
    }
}
