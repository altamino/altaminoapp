package com.narvii.master.home.discover.adapter;

import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.ContentModule;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HeaderAdsModuleHorizontalAdapter.kt */
/* loaded from: classes3.dex */
public final class HeaderAdsModuleHorizontalAdapter extends AdsModuleHorizontalAdapter {
    @Override // com.narvii.master.home.discover.adapter.AdsModuleHorizontalAdapter
    public int getItemLayout() {
        return R.layout.header_ads_module_item;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderAdsModuleHorizontalAdapter(NVContext context, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
        super(context, contentModule, moduleDisplayConfig);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(contentModule, "contentModule");
    }
}
