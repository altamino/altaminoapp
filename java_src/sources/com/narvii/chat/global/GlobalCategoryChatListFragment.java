package com.narvii.chat.global;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.model.ChatThread;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class GlobalCategoryChatListFragment extends NVListFragment {
    private GlobalThreadListWrapper.GlobalThreadCategory category;
    private ContentLanguageService languageService;

    private final class Adapter extends GlobalChatListAdapter {
        final /* synthetic */ GlobalCategoryChatListFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "ChatList";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull GlobalCategoryChatListFragment globalCategoryChatListFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalCategoryChatListFragment;
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderChatServer = ApiRequest.builder().chatServer();
            GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory = this.this$0.category;
            if (globalThreadCategory == null) {
                t.B("category");
                globalThreadCategory = null;
            }
            ApiRequest apiRequestBuild = builderChatServer.path("/chat/thread/explore/categories/" + globalThreadCategory.categoryId).param("language", getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(ChatThread.class));
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.list.NVListFragment
    @Nullable
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "chats_sub_page";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    private final Drawable getBackgroundDrawable() {
        Drawable dynamicThemeBg = new MasterThemeHelper(this).getDynamicThemeBg();
        t.i(dynamicThemeBg, "getDynamicThemeBg(...)");
        return dynamicThemeBg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(GlobalCategoryChatListFragment this$0, View view) {
        t.j(this$0, "this$0");
        new MasterThemeHelper(this$0).saveDynamicThemeBg(this$0.getActivity());
        Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Global Chats");
        ContentLanguageService contentLanguageService = this$0.languageService;
        if (contentLanguageService == null) {
            t.B("languageService");
            contentLanguageService = null;
        }
        intent.putExtra("language", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
        intent.putExtra("tab", "chat");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, intent);
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        Adapter adapter = new Adapter(this, this);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 5.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, 0, iDpToPxInt, 0);
        divideColumnAdapter.setAdapter(adapter, 2);
        new MarginAdapter(this, getActionBarOverlaySize() + getStatusBarOverlaySize() + getResources().getDimensionPixelSize(R.dimen.community_base_height));
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.fragment_global_category_chat_list, viewGroup, false);
        ((NVImageView) viewInflate.findViewById(R.id.bg)).setImageDrawable(getBackgroundDrawable());
        ((RealtimeBlurView) viewInflate.findViewById(R.id.blur)).setOverlayColor(Color.parseColor("#3F000000"));
        return viewInflate;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory = this.category;
        if (globalThreadCategory == null) {
            t.B("category");
            globalThreadCategory = null;
        }
        String name = globalThreadCategory.name;
        t.i(name, "name");
        String upperCase = name.toUpperCase();
        t.i(upperCase, "toUpperCase(...)");
        setTitle(upperCase);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.search_layout_container);
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        t.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = getActionBarOverlaySize() + getStatusBarOverlaySize();
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalCategoryChatListFragment.onViewCreated$lambda$0(this.f1914a, view2);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected String emptyMessage() {
        String string = getString(R.string.chat_category_list_empty_message);
        t.i(string, "getString(...)");
        return string;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("content_language");
        t.i(service, "getService(...)");
        this.languageService = (ContentLanguageService) service;
        Object as = JacksonUtils.readAs(getStringParam("category"), GlobalThreadListWrapper.GlobalThreadCategory.class);
        t.i(as, "readAs(...)");
        this.category = (GlobalThreadListWrapper.GlobalThreadCategory) as;
        if (bundle == null) {
            Object service2 = getService("statistics");
            t.i(service2, "getService(...)");
            StatisticsEventBuilder statisticsEventBuilderEvent = ((StatisticsService) service2).event("Global Chats - Categories See All");
            GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory = this.category;
            if (globalThreadCategory == null) {
                t.B("category");
                globalThreadCategory = null;
            }
            statisticsEventBuilderEvent.param("Category Name", globalThreadCategory.name).source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Global Chats - Categories See All Total");
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setOverScrollMode(2);
        }
    }
}
