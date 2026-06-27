package com.narvii.monetization.sticker.collection;

import android.content.Intent;
import android.os.Bundle;
import com.narvii.app.FragmentWrapperFragment;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.model.StickerCollectionResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;

/* loaded from: classes3.dex */
public class StickerCollectionDispatchFragment extends FragmentWrapperFragment {
    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.FragmentWrapperFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((CharSequence) null);
        if (isLoaded()) {
            return;
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/sticker-collection/" + getStringParam("id")).param("includeStickers", true).build(), new ApiResponseListener<StickerCollectionResponse>(StickerCollectionResponse.class) { // from class: com.narvii.monetization.sticker.collection.StickerCollectionDispatchFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StickerCollectionResponse stickerCollectionResponse) throws Exception {
                if (StickerCollectionDispatchFragment.this.isDestoryed() || StickerCollectionDispatchFragment.this.isFinishing()) {
                    return;
                }
                StickerCollection stickerCollection = stickerCollectionResponse.stickerCollection;
                if (stickerCollection == null) {
                    StickerCollectionDispatchFragment.this.finish();
                    return;
                }
                Intent intent = StickerCollectionDetailFragment.intent(stickerCollection);
                intent.putExtra("id", stickerCollectionResponse.stickerCollection.id());
                intent.putExtra("response", JacksonUtils.writeAsString(stickerCollectionResponse));
                intent.putExtra("Source", StickerCollectionDispatchFragment.this.getStringParam("Source"));
                StickerCollectionDispatchFragment.this.setWrapFragment(intent);
            }
        });
    }
}
