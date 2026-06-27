package com.narvii.app;

import android.os.Build;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.community.CommunityService;
import com.narvii.community.CommunityTheme;
import com.narvii.config.ConfigService;
import com.narvii.config.ConfigTheme;
import com.narvii.model.Community;
import com.narvii.model.api.CommunityResponse;
import com.narvii.theme.ThemePackService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PackageUtils;
import com.narvii.util.http.ApiRequest;
import java.io.InputStream;

/* loaded from: classes.dex */
public class AminoConfig extends ConfigService {
    final int cid;
    CommunityService communityService;
    NVContext context;
    private GlobalConfigWrapper globalConfigWrapper;
    ConfigTheme theme;

    public AminoConfig(NVContext nVContext) throws Throwable {
        super(nVContext);
        this.context = nVContext;
        this.cid = new PackageUtils(nVContext.getContext()).getCommunityIdFromPackageName();
        this.communityService = (CommunityService) nVContext.getService("community");
        try {
            InputStream inputStreamOpen = nVContext.getContext().getAssets().open("community.json");
            CommunityResponse communityResponse = (CommunityResponse) JacksonUtils.DEFAULT_MAPPER.readValue(inputStreamOpen, CommunityResponse.class);
            inputStreamOpen.close();
            this.communityService.updateCommunity(communityResponse.community, true, communityResponse.timestamp);
            Community community = this.communityService.getCommunity(this.cid);
            ThemePackService themePackService = (ThemePackService) nVContext.getService("themePack");
            if (themePackService.getStatus(community.id, community.themePackRevision()) == 0) {
                themePackService.extract(this.cid, community.themePackRevision(), community.themePackUrl());
            }
            this.theme = new CommunityTheme(nVContext, this.cid);
        } catch (Exception unused) {
            throw new RuntimeException("fail to init community");
        }
    }

    public void start() throws Throwable {
        Community community = this.communityService.getCommunity(this.cid);
        ThemePackService themePackService = (ThemePackService) this.context.getService("themePack");
        if (themePackService.getStatus(community.id, community.themePackRevision()) == 0) {
            themePackService.extract(this.cid, community.themePackRevision(), community.themePackUrl());
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
    public JsonNode getNode(String str) {
        JsonNode jsonNodeNodePath;
        JsonNode node;
        Community community = this.communityService.getCommunity(this.cid);
        return (community == null || (jsonNodeNodePath = JacksonUtils.nodePath(community.configuration, "general")) == null || (node = ConfigService.getNode(jsonNodeNodePath, str)) == null) ? super.getNode(str) : node;
    }

    @Override // com.narvii.config.ConfigService
    public int getCommunityId() {
        return this.cid;
    }

    @Override // com.narvii.config.ConfigService
    public ConfigTheme getTheme() {
        return this.theme;
    }

    public AminoConfig getGlobalConfig() {
        if (this.globalConfigWrapper == null) {
            this.globalConfigWrapper = new GlobalConfigWrapper();
        }
        return this.globalConfigWrapper;
    }

    /* loaded from: classes2.dex */
    private class GlobalConfigWrapper extends AminoConfig {
        @Override // com.narvii.app.AminoConfig, com.narvii.config.ConfigService
        public int getCommunityId() {
            return 0;
        }

        @Override // com.narvii.app.AminoConfig
        public void start() {
        }

        public GlobalConfigWrapper() {
            super(AminoConfig.this.context);
        }

        @Override // com.narvii.app.AminoConfig, com.narvii.config.ConfigService
        public JsonNode getNode(String str) {
            return AminoConfig.this.getNode(str);
        }

        @Override // com.narvii.app.AminoConfig, com.narvii.config.ConfigService
        public ConfigTheme getTheme() {
            return AminoConfig.this.getTheme();
        }
    }
}
