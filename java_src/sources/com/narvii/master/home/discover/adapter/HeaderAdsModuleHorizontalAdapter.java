package com.narvii.master.home.discover.adapter;

import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.ContentModule;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class HeaderAdsModuleHorizontalAdapter extends AdsModuleHorizontalAdapter {
    @Override // com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter
    public int getItemLayout() {
        return R.layout.header_ads_module_item;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderAdsModuleHorizontalAdapter(@NotNull NVContext context, @NotNull ContentModule contentModule, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(context, contentModule, moduleDisplayConfig);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(contentModule, "contentModule");
    }
}
