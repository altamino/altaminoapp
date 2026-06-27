package com.narvii.chat;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.adapter.GeneralChatCardAdapter;
import com.narvii.modulization.Module;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatModuleListFramgment.kt */
/* loaded from: classes2.dex */
public final class ChatModuleListFramgment extends NVRecyclerViewFragment {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_CONTENT_MODULE = "content_module";
    private HashMap _$_findViewCache;
    private ContentModule module;

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
        return "TopicChats";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object as = JacksonUtils.readAs(getStringParam(KEY_CONTENT_MODULE), ContentModule.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…ontentModule::class.java)");
        this.module = (ContentModule) as;
        ContentModule contentModule = this.module;
        if (contentModule != null) {
            setTitle(contentModule.displayName);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(Module.CONFIG_MODULE_KEY);
            throw null;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View viewOnCreateView = super.onCreateView(inflater, viewGroup, bundle);
        if (viewOnCreateView != null) {
            viewOnCreateView.setBackground(new ColorDrawable(getResources().getColor(R.color.color_default_primary)));
        }
        return viewOnCreateView;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this, Utils.dpToPxInt(getContext(), 15.0f), 0, 0, 0);
        ContentModule contentModule = this.module;
        if (contentModule != null) {
            recyclerViewColumnAdapter.setAdapter(new ChatListAdapter(this, this, contentModule), 2);
            return recyclerViewColumnAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Module.CONFIG_MODULE_KEY);
        throw null;
    }

    /* compiled from: ChatModuleListFramgment.kt */
    private final class ChatListAdapter extends GeneralChatCardAdapter {
        final /* synthetic */ ChatModuleListFramgment this$0;

        @Override // com.narvii.master.home.discover.adapter.GeneralChatCardAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ChatList";
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        @Override // com.narvii.master.home.discover.adapter.GeneralChatCardAdapter
        public boolean restrictSize() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatListAdapter(ChatModuleListFramgment chatModuleListFramgment, NVContext ctx, ContentModule module) {
            super(ctx, module, null);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(module, "module");
            this.this$0 = chatModuleListFramgment;
        }
    }

    /* compiled from: ChatModuleListFramgment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
