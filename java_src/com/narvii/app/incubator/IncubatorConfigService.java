package com.narvii.app.incubator;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.community.CommunityTheme;
import com.narvii.config.ConfigService;
import com.narvii.config.ConfigTheme;
import com.narvii.model.Community;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PackageUtils;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes.dex */
public class IncubatorConfigService extends ConfigService {
    private int communityId;
    private CommunityService communityService;
    private NVContext context;
    private ConfigTheme theme;

    @Override // com.narvii.config.ConfigService
    public String getServiceHost() {
        return super.getServiceHost();
    }

    public IncubatorConfigService(NVContext nVContext, int i) {
        super(nVContext);
        this.context = nVContext;
        this.communityId = i;
        if (i == 0) {
            this.theme = new DefaultTheme();
        } else {
            this.theme = new CommunityTheme(nVContext, i);
        }
    }

    @Override // com.narvii.config.ConfigService
    protected ApiRequest getConfigRequest() {
        ApiRequest.Builder builderPath = ApiRequest.builder().https().post().global().path("client-config");
        PackageUtils packageUtils = new PackageUtils(this.context.getContext());
        builderPath.param("packageName", this.context.getContext().getPackageName());
        builderPath.param("versionCode", Integer.valueOf(packageUtils.getVersionCode()));
        builderPath.param("androidApi", Integer.valueOf(Build.VERSION.SDK_INT));
        builderPath.param("model", Build.MODEL);
        builderPath.param("manufacturer", Build.MANUFACTURER);
        builderPath.param("device", Build.DEVICE);
        return builderPath.build();
    }

    @Override // com.narvii.config.ConfigService
    public int getCommunityId() {
        return this.communityId;
    }

    @Override // com.narvii.config.ConfigService
    public ConfigTheme getTheme() {
        return this.theme;
    }

    /* loaded from: classes2.dex */
    private class DefaultTheme implements ConfigTheme {
        int colorHighlight;
        int colorPrimary;

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

        DefaultTheme() {
            this.colorPrimary = IncubatorConfigService.this.context.getContext().getResources().getColor(R.color.color_default_primary);
            this.colorHighlight = IncubatorConfigService.this.context.getContext().getResources().getColor(R.color.color_highlight);
        }

        @Override // com.narvii.config.ConfigTheme
        public int colorPrimary() {
            return this.colorPrimary;
        }

        @Override // com.narvii.config.ConfigTheme
        public int colorHighlight() {
            return this.colorHighlight;
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
    public JsonNode getNode(String str) {
        JsonNode jsonNodeNodePath;
        JsonNode node;
        if (this.communityId != 0) {
            if (this.communityService == null) {
                this.communityService = (CommunityService) this.context.getService("community");
            }
            Community community = this.communityService.getCommunity(this.communityId);
            if (community != null && (jsonNodeNodePath = JacksonUtils.nodePath(community.configuration, "general")) != null && (node = ConfigService.getNode(jsonNodeNodePath, str)) != null) {
                return node;
            }
        }
        return super.getNode(str);
    }
}
