package com.narvii.poweruser;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.hangout.HangoutListAdapter;
import com.narvii.config.ConfigService;
import com.narvii.list.DatePageHelper;
import com.narvii.list.DatePagedAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.SectionDivideColumnAdapter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecentCreatedChatroomListFragment.kt */
/* loaded from: classes3.dex */
public final class RecentCreatedChatroomListFragment extends NVListFragment {
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

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.recently_created_public_chatrooms);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDividerHeight(0);
        }
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView instanceof NVListView) {
            ConfigService configService = (ConfigService) getService("config");
            Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
            ((NVListView) listView).setListContentBackground(new ColorDrawable(configService.getTheme().colorPrimary()));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int iDpToPx = (int) Utils.dpToPx(getContext(), 5.0f);
        SectionDivideColumnAdapter sectionDivideColumnAdapter = new SectionDivideColumnAdapter(this, iDpToPx, 0, iDpToPx, 0);
        AllChatAdapter allChatAdapter = new AllChatAdapter();
        DatePagedAdapter datePagedAdapter = new DatePagedAdapter(this) { // from class: com.narvii.poweruser.RecentCreatedChatroomListFragment$createAdapter$datePagedAdapter$1
            @Override // com.narvii.list.DatePagedAdapter
            protected int dateSectionLayoutId() {
                return R.layout.recently_created_chatroom_date_section;
            }

            @Override // com.narvii.list.DatePagedAdapter
            protected DatePageHelper newDatePageHelper(NVPagedAdapter<?, ?> nvPagedAdapter) {
                Intrinsics.checkParameterIsNotNull(nvPagedAdapter, "nvPagedAdapter");
                return new DatePageHelper(nvPagedAdapter);
            }
        };
        datePagedAdapter.setAdapter(allChatAdapter);
        sectionDivideColumnAdapter.setAdapter(datePagedAdapter, 2);
        return sectionDivideColumnAdapter;
    }

    /* compiled from: RecentCreatedChatroomListFragment.kt */
    public final class AllChatAdapter extends HangoutListAdapter {
        public AllChatAdapter() {
            super(RecentCreatedChatroomListFragment.this);
            this.darkTheme = true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest apiRequestBuild = ApiRequest.builder().chatServer().path("/chat/thread?type=public-all").build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
            return apiRequestBuild;
        }
    }
}
