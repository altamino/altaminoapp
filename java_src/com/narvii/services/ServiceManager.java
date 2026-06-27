package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.Log;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ServiceManager {
    private final NVContext context;
    private final HashMap<String, ServiceProvider<Object>> providers = new HashMap<>();
    private final HashMap<String, Object> services = new HashMap<>();
    private int status;

    public ServiceManager(NVContext nVContext) {
        this.context = nVContext;
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

    public synchronized void start() {
        if (this.status >= 2) {
            return;
        }
        if (this.status < 1) {
            Log.e("service manager jump from " + this.status + " to 2");
        }
        this.status = 2;
        for (String str : this.providers.keySet()) {
            Object obj = this.services.get(str);
            if (obj != null) {
                this.providers.get(str).start(this.context, obj);
            }
        }
    }

    public synchronized void resume() {
        if (this.status >= 3) {
            return;
        }
        this.status = 3;
        if (this.status < 2) {
            Log.e("service manager jump from " + this.status + " to 3");
        }
        for (String str : this.providers.keySet()) {
            Object obj = this.services.get(str);
            if (obj != null) {
                this.providers.get(str).resume(this.context, obj);
            }
        }
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

    public synchronized void stop() {
        if (this.status <= 1) {
            return;
        }
        if (this.status > 2) {
            Log.e("service manager jump from " + this.status + " to 1");
        }
        this.status = 1;
        for (String str : this.providers.keySet()) {
            Object obj = this.services.get(str);
            if (obj != null) {
                this.providers.get(str).stop(this.context, obj);
            }
        }
    }

    public synchronized void destroy() {
        if (this.status <= 0) {
            return;
        }
        if (this.status > 1) {
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

    public synchronized void addService(String str, Object obj) {
        if (hasService(str)) {
            throw new IllegalStateException("service " + str + " already exists");
        }
        if (this.providers.containsKey(str)) {
            this.providers.remove(str);
        }
        this.services.put(str, obj);
    }

    public synchronized Object getService(String str) {
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
    }

    public synchronized void removeService(String str) {
        Object obj = this.services.get(str);
        if (obj != null) {
            ServiceProvider<Object> serviceProvider = this.providers.get(str);
            if (serviceProvider != null) {
                int i = this.status;
                if (i >= 3) {
                    serviceProvider.pause(this.context, obj);
                }
                if (i >= 2) {
                    serviceProvider.stop(this.context, obj);
                }
                if (i >= 1) {
                    serviceProvider.destroy(this.context, obj);
                }
            }
            this.services.remove(str);
        }
        this.providers.remove(str);
    }

    public synchronized Object peekService(String str) {
        return this.services.get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean hasService(java.lang.String r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            java.util.HashMap<java.lang.String, java.lang.Object> r0 = r1.services     // Catch: java.lang.Throwable -> L17
            boolean r0 = r0.containsKey(r2)     // Catch: java.lang.Throwable -> L17
            if (r0 != 0) goto L14
            java.util.HashMap<java.lang.String, com.narvii.services.ServiceProvider<java.lang.Object>> r0 = r1.providers     // Catch: java.lang.Throwable -> L17
            boolean r2 = r0.containsKey(r2)     // Catch: java.lang.Throwable -> L17
            if (r2 == 0) goto L12
            goto L14
        L12:
            r2 = 0
            goto L15
        L14:
            r2 = 1
        L15:
            monitor-exit(r1)
            return r2
        L17:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.services.ServiceManager.hasService(java.lang.String):boolean");
    }

    public synchronized void restart() {
        int i = this.status;
        if (i >= 3) {
            pause();
        }
        if (i >= 2) {
            stop();
        }
        if (i >= 1) {
            destroy();
        }
        if (i >= 1) {
            create();
        }
        if (i >= 2) {
            start();
        }
        if (i >= 3) {
            resume();
        }
    }
}
