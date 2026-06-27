package com.narvii.chat.global;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.global.GlobalThreadListWrapper;
import com.narvii.community.search.MasterThemeHelper;
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
import com.narvii.widget.NVImageView;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: GlobalCategoryChatListFragment.kt */
/* loaded from: classes2.dex */
public final class GlobalCategoryChatListFragment extends NVListFragment {
    private HashMap _$_findViewCache;
    private GlobalThreadListWrapper.GlobalThreadCategory category;
    private ContentLanguageService languageService;

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

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "ChatsSubPage";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
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

    public static final /* synthetic */ GlobalThreadListWrapper.GlobalThreadCategory access$getCategory$p(GlobalCategoryChatListFragment globalCategoryChatListFragment) {
        GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory = globalCategoryChatListFragment.category;
        if (globalThreadCategory != null) {
            return globalThreadCategory;
        }
        Intrinsics.throwUninitializedPropertyAccessException("category");
        throw null;
    }

    public static final /* synthetic */ ContentLanguageService access$getLanguageService$p(GlobalCategoryChatListFragment globalCategoryChatListFragment) {
        ContentLanguageService contentLanguageService = globalCategoryChatListFragment.languageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("languageService");
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"content_language\")");
        this.languageService = (ContentLanguageService) service;
        Object as = JacksonUtils.readAs(getStringParam("category"), GlobalThreadListWrapper.GlobalThreadCategory.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…readCategory::class.java)");
        this.category = (GlobalThreadListWrapper.GlobalThreadCategory) as;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.fragment_global_category_chat_list, viewGroup, false);
        ((NVImageView) viewInflate.findViewById(R.id.bg)).setImageDrawable(getBackgroundDrawable());
        ((RealtimeBlurView) viewInflate.findViewById(R.id.blur)).setOverlayColor(Color.parseColor("#3F000000"));
        return viewInflate;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory = this.category;
        if (globalThreadCategory == null) {
            Intrinsics.throwUninitializedPropertyAccessException("category");
            throw null;
        }
        String str = globalThreadCategory.name;
        Intrinsics.checkExpressionValueIsNotNull(str, "category.name");
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String upperCase = str.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(upperCase, "(this as java.lang.String).toUpperCase()");
        setTitle(upperCase);
        LinearLayout searchContainer = (LinearLayout) view.findViewById(R.id.search_layout_container);
        Intrinsics.checkExpressionValueIsNotNull(searchContainer, "searchContainer");
        ViewGroup.LayoutParams layoutParams = searchContainer.getLayoutParams();
        if (layoutParams != null) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = getActionBarOverlaySize() + getStatusBarOverlaySize();
            searchContainer.setLayoutParams(layoutParams);
            searchContainer.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.GlobalCategoryChatListFragment.onViewCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    new MasterThemeHelper(GlobalCategoryChatListFragment.this).saveDynamicThemeBg(GlobalCategoryChatListFragment.this.getActivity());
                    Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
                    intent.putExtra("Source", "Global Chats");
                    intent.putExtra(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalCategoryChatListFragment.access$getLanguageService$p(GlobalCategoryChatListFragment.this).getRequestPrefLanguageWithLocalAsDefault());
                    intent.putExtra("tab", "chat");
                    GlobalCategoryChatListFragment.this.startActivity(intent);
                    FragmentActivity activity = GlobalCategoryChatListFragment.this.getActivity();
                    if (activity != null) {
                        activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    }
                }
            });
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setOverScrollMode(2);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected String emptyMessage() {
        String string = getString(R.string.chat_category_list_empty_message);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.chat_…egory_list_empty_message)");
        return string;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        Adapter adapter = new Adapter(this, this);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 5.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, 0, iDpToPxInt, 0);
        divideColumnAdapter.setAdapter(adapter, 2);
        new MarginAdapter(this, getActionBarOverlaySize() + getStatusBarOverlaySize() + getResources().getDimensionPixelSize(R.dimen.community_base_height));
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        return mergeAdapter;
    }

    private final Drawable getBackgroundDrawable() {
        Drawable dynamicThemeBg = new MasterThemeHelper(this).getDynamicThemeBg();
        Intrinsics.checkExpressionValueIsNotNull(dynamicThemeBg, "MasterThemeHelper(this).dynamicThemeBg");
        return dynamicThemeBg;
    }

    /* compiled from: GlobalCategoryChatListFragment.kt */
    private final class Adapter extends GlobalChatListAdapter {
        final /* synthetic */ GlobalCategoryChatListFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ChatList";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(GlobalCategoryChatListFragment globalCategoryChatListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalCategoryChatListFragment;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(ChatThread.class));
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest apiRequestBuild = ApiRequest.builder().chatServer().path("/chat/thread/explore/categories/" + GlobalCategoryChatListFragment.access$getCategory$p(this.this$0).categoryId).param(IjkMediaMeta.IJKM_KEY_LANGUAGE, getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "requestBuilder.build()");
            return apiRequestBuild;
        }
    }
}
