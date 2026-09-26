package com.narvii.chat;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.adapter.GeneralChatCardAdapter;
import com.narvii.modulization.Module;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class ChatModuleListFramgment extends NVRecyclerViewFragment {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_CONTENT_MODULE = "content_module";
    private ContentModule module;

    private final class ChatListAdapter extends GeneralChatCardAdapter {
        final /* synthetic */ ChatModuleListFramgment this$0;

        @Override // com.narvii.master.home.discover.adapter.GeneralChatCardAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        @NotNull
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
        public ChatListAdapter(@NotNull ChatModuleListFramgment chatModuleListFramgment, @NotNull NVContext ctx, ContentModule module) {
            super(ctx, module, null);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            kotlin.jvm.internal.t.j(module, "module");
            this.this$0 = chatModuleListFramgment;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "topic_chats";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        View viewOnCreateView = super.onCreateView(inflater, viewGroup, bundle);
        if (viewOnCreateView != null) {
            viewOnCreateView.setBackground(new ColorDrawable(getResources().getColor(R.color.color_default_primary)));
        }
        return viewOnCreateView;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this, Utils.dpToPxInt(getContext(), 15.0f), 0, 0, 0);
        ContentModule contentModule = this.module;
        if (contentModule == null) {
            kotlin.jvm.internal.t.B(Module.CONFIG_MODULE_KEY);
            contentModule = null;
        }
        recyclerViewColumnAdapter.setAdapter(new ChatListAdapter(this, this, contentModule), 2);
        return recyclerViewColumnAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object as = JacksonUtils.readAs(getStringParam(KEY_CONTENT_MODULE), ContentModule.class);
        kotlin.jvm.internal.t.i(as, "readAs(...)");
        ContentModule contentModule = (ContentModule) as;
        this.module = contentModule;
        if (contentModule == null) {
            kotlin.jvm.internal.t.B(Module.CONFIG_MODULE_KEY);
            contentModule = null;
        }
        setTitle(contentModule.displayName);
    }
}
