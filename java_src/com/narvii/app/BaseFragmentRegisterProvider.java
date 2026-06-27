package com.narvii.app;

import com.narvii.services.AutostartServiceProvider;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class BaseFragmentRegisterProvider implements AutostartServiceProvider<FragmentRegister> {
    FragmentRegister instance;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, FragmentRegister fragmentRegister) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, FragmentRegister fragmentRegister) {
    }

    protected abstract void registerFragment(HashMap<String, Class> map);

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, FragmentRegister fragmentRegister) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, FragmentRegister fragmentRegister) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, FragmentRegister fragmentRegister) {
    }

    @Override // com.narvii.services.ServiceProvider
    public FragmentRegister create(NVContext nVContext) {
        if (this.instance == null) {
            HashMap<String, Class> map = new HashMap<>();
            registerFragment(map);
            this.instance = new FragmentRegister(map);
        }
        return this.instance;
    }
}
