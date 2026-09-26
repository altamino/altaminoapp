package com.narvii.semicontext;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.config.ConfigTheme;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes2.dex */
public class SemiConfigService extends ConfigService {
    private int communityId;
    private NVContext context;
    private ConfigTheme theme;

    private class SemiTheme implements ConfigTheme {
        int colorHighlight;
        int colorPrimary;

        @Override // com.narvii.config.ConfigTheme
        public int colorHighlight() {
            return this.colorHighlight;
        }

        @Override // com.narvii.config.ConfigTheme
        public int colorPrimary() {
            return this.colorPrimary;
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable drawerImage() {
            return null;
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable logoImage() {
            return null;
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable pageBackground() {
            return null;
        }

        SemiTheme() {
            this.colorPrimary = SemiConfigService.this.context.getContext().getResources().getColor(R.color.color_default_dark);
            this.colorHighlight = SemiConfigService.this.context.getContext().getResources().getColor(R.color.color_highlight);
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable actionbarBackground() {
            return new ColorDrawable(colorPrimary());
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable fakeActionbarBackground() {
            return new ColorDrawable(colorPrimary());
        }
    }

    @Override // com.narvii.config.ConfigService
    public int getCommunityId() {
        return this.communityId;
    }

    @Override // com.narvii.config.ConfigService
    protected ApiRequest getConfigRequest() {
        return null;
    }

    @Override // com.narvii.config.ConfigService
    public ConfigTheme getTheme() {
        return this.theme;
    }

    public SemiConfigService(NVContext nVContext, int i10) {
        super(nVContext);
        this.context = nVContext;
        this.communityId = i10;
        this.theme = new SemiTheme();
    }
}
