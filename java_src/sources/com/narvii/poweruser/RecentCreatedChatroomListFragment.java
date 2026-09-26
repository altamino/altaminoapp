package com.narvii.poweruser;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.master.R;
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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class RecentCreatedChatroomListFragment extends NVListFragment {

    public final class AllChatAdapter extends HangoutListAdapter {
        public AllChatAdapter() {
            super(RecentCreatedChatroomListFragment.this);
            this.darkTheme = true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest apiRequestBuild = ApiRequest.builder().chatServer().path("/chat/thread?type=public-all").build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        int iDpToPx = (int) Utils.dpToPx(getContext(), 5.0f);
        SectionDivideColumnAdapter sectionDivideColumnAdapter = new SectionDivideColumnAdapter(this, iDpToPx, 0, iDpToPx, 0);
        AllChatAdapter allChatAdapter = new AllChatAdapter();
        DatePagedAdapter datePagedAdapter = new DatePagedAdapter(this) { // from class: com.narvii.poweruser.RecentCreatedChatroomListFragment$createAdapter$datePagedAdapter$1
            @Override // com.narvii.list.DatePagedAdapter
            protected int dateSectionLayoutId() {
                return R.layout.recently_created_chatroom_date_section;
            }

            @Override // com.narvii.list.DatePagedAdapter
            @NotNull
            protected DatePageHelper newDatePageHelper(@NotNull NVPagedAdapter<?, ?> nvPagedAdapter) {
                t.j(nvPagedAdapter, "nvPagedAdapter");
                return new DatePageHelper(nvPagedAdapter);
            }

            {
                super(this);
            }
        };
        datePagedAdapter.setAdapter(allChatAdapter);
        sectionDivideColumnAdapter.setAdapter(datePagedAdapter, 2);
        return sectionDivideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.recently_created_public_chatrooms);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDividerHeight(0);
        }
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView instanceof NVListView) {
            ((NVListView) listView).setListContentBackground(new ColorDrawable(((ConfigService) getService("config")).getTheme().colorPrimary()));
        }
    }
}
