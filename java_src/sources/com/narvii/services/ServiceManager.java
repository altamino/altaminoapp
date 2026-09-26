package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class ServiceManager {
    private final NVContext context;
    private final HashMap<String, ServiceProvider<Object>> providers = new HashMap<>();
    private final HashMap<String, Object> services = new HashMap<>();
    private int status;

    public synchronized void addService(String str, Object obj) {
        try {
            if (hasService(str)) {
                throw new IllegalStateException("service " + str + " already exists");
            }
            if (this.providers.containsKey(str)) {
                this.providers.remove(str);
            }
            this.services.put(str, obj);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void addServiceProvider(String str, ServiceProvider<? extends Object> serviceProvider) {
        if (hasService(str)) {
            throw new IllegalStateException("service " + str + " already exists");
        }
        this.providers.put(str, serviceProvider);
        if (this.status > 0 && (serviceProvider instanceof AutostartServiceProvider)) {
            getService(str);
        }
    }

    public synchronized void create() {
        if (this.status >= 1) {
            return;
        }
        this.status = 1;
        for (Map.Entry<String, ServiceProvider<Object>> entry : this.providers.entrySet()) {
            if (entry.getValue() instanceof AutostartServiceProvider) {
                getService(entry.getKey());
            }
        }
    }

    public synchronized void destroy() {
        try {
            int i10 = this.status;
            if (i10 <= 0) {
                return;
            }
            if (i10 > 1) {
                Log.e("service manager jump from " + this.status + " to 0");
            }
            this.status = 0;
            for (String str : this.providers.keySet()) {
                Object obj = this.services.get(str);
                if (obj != null) {
                    this.providers.get(str).destroy(this.context, obj);
                    this.services.remove(str);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized Object getService(String str) {
        try {
            Object obj = this.services.get(str);
            if (obj != null) {
                return obj;
            }
            ServiceProvider<Object> serviceProvider = this.providers.get(str);
            if (serviceProvider == null) {
                return null;
            }
            Object objCreate = serviceProvider.create(this.context);
            if (objCreate == null) {
                return null;
            }
            if (this.status > 1) {
                serviceProvider.start(this.context, objCreate);
            }
            if (this.status > 2) {
                serviceProvider.resume(this.context, objCreate);
            }
            this.services.put(str, objCreate);
            return objCreate;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean hasService(String str) {
        return this.services.containsKey(str) || this.providers.containsKey(str);
    }

    public synchronized void pause() {
        if (this.status <= 2) {
            return;
        }
        this.status = 2;
        for (String str : this.providers.keySet()) {
            Object obj = this.services.get(str);
            if (obj != null) {
                this.providers.get(str).pause(this.context, obj);
            }
        }
    }

    public synchronized Object peekService(String str) {
        return this.services.get(str);
    }

    public synchronized void removeService(String str) {
        try {
            Object obj = this.services.get(str);
            if (obj != null) {
                ServiceProvider<Object> serviceProvider = this.providers.get(str);
                if (serviceProvider != null) {
                    int i10 = this.status;
                    if (i10 >= 3) {
                        serviceProvider.pause(this.context, obj);
                    }
                    if (i10 >= 2) {
                        serviceProvider.stop(this.context, obj);
                    }
                    if (i10 >= 1) {
                        serviceProvider.destroy(this.context, obj);
                    }
                }
                this.services.remove(str);
            }
            this.providers.remove(str);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void restart() {
        try {
            int i10 = this.status;
            if (i10 >= 3) {
                pause();
            }
            if (i10 >= 2) {
                stop();
            }
            if (i10 >= 1) {
                destroy();
            }
            if (i10 >= 1) {
                create();
            }
            if (i10 >= 2) {
                start();
            }
            if (i10 >= 3) {
                resume();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void resume() {
        if (this.status >= 3) {
            return;
        }
        this.status = 3;
        for (String str : this.providers.keySet()) {
            Object obj = this.services.get(str);
            if (obj != null) {
                this.providers.get(str).resume(this.context, obj);
            }
        }
    }

    public synchronized void start() {
        try {
            int i10 = this.status;
            if (i10 >= 2) {
                return;
            }
            if (i10 < 1) {
                Log.e("service manager jump from " + this.status + " to 2");
            }
            this.status = 2;
            for (String str : this.providers.keySet()) {
                Object obj = this.services.get(str);
                if (obj != null) {
                    this.providers.get(str).start(this.context, obj);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void stop() {
        try {
            int i10 = this.status;
            if (i10 <= 1) {
                return;
            }
            if (i10 > 2) {
                Log.e("service manager jump from " + this.status + " to 1");
            }
            this.status = 1;
            for (String str : this.providers.keySet()) {
                Object obj = this.services.get(str);
                if (obj != null) {
                    this.providers.get(str).stop(this.context, obj);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public ServiceManager(NVContext nVContext) {
        this.context = nVContext;
    }
}
