package com.narvii.nvplayer;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class NVMediaSource {
    public String areaName;

    @JsonIgnore
    private WeakReference<NVContext> contextWeakReference;
    public boolean loadLowResVideo;
    public List<Media> mediaList;

    @JsonIgnore
    private NVObject nvObject;
    public boolean videoSupportLowRes;
    public boolean pollOrQuiz = false;
    public boolean notCache = false;
    public boolean loop = true;

    public NVObject getNvObject() {
        return this.nvObject;
    }

    public void setNvObject(NVObject nVObject) {
        this.nvObject = nVObject;
    }

    public void setNVContext(NVContext nVContext) {
        this.contextWeakReference = new WeakReference<>(nVContext);
    }

    public void setAreaName(String str) {
        this.areaName = str;
    }

    public String getAreaName() {
        return this.areaName;
    }

    public NVContext getNVContext() {
        WeakReference<NVContext> weakReference = this.contextWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NVMediaSource)) {
            return false;
        }
        NVMediaSource nVMediaSource = (NVMediaSource) obj;
        if (this.pollOrQuiz != nVMediaSource.pollOrQuiz || this.loop != nVMediaSource.loop) {
            return false;
        }
        List<Media> list = nVMediaSource.mediaList;
        int size = list.size();
        List<Media> list2 = this.mediaList;
        if ((list2 == null ? 0 : list2.size()) != size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!Utils.isEqualsNotNull(list.get(i).url, this.mediaList.get(i).url)) {
                return false;
            }
        }
        return true;
    }

    public boolean containValidVideo() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0) {
            return false;
        }
        Iterator<Media> it = this.mediaList.iterator();
        while (it.hasNext()) {
            if (it.next().getMediaUrl() != null) {
                return true;
            }
        }
        return false;
    }

    public Media getFirstMedia() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0) {
            return null;
        }
        return this.mediaList.get(0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<Media> it = this.mediaList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getMediaUrl());
        }
        return "[" + sb.toString() + "]";
    }

    public boolean isVideoSupportLowRes() {
        return this.videoSupportLowRes;
    }

    public void setVideoSupportLowRes(boolean z) {
        this.videoSupportLowRes = z;
    }

    public boolean isLoadLowResVideo() {
        return this.loadLowResVideo;
    }

    public void setLoadLowResVideo(boolean z) {
        this.loadLowResVideo = z;
    }

    public String getLowResVideoUrl(int i) {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0 || i < 0 || i >= this.mediaList.size()) {
            return null;
        }
        return Utils.getLowResVideoUrl(this.mediaList.get(i).url);
    }

    public String getVideoUrlWithRes(int i, boolean z) {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0) {
            return null;
        }
        if (z) {
            return getLowResVideoUrl(i);
        }
        return this.mediaList.get(i).url;
    }

    public boolean isPollOrQuiz() {
        return this.pollOrQuiz;
    }

    public void setPollOrQuiz(boolean z) {
        this.pollOrQuiz = z;
    }

    public boolean getNotCache() {
        return this.notCache;
    }

    public void setNotCache(boolean z) {
        this.notCache = z;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NVMediaSource m52clone() {
        NVMediaSource nVMediaSource = (NVMediaSource) JacksonUtils.readAs(JacksonUtils.writeAsString(this), NVMediaSource.class);
        nVMediaSource.contextWeakReference = this.contextWeakReference;
        nVMediaSource.nvObject = this.nvObject;
        return nVMediaSource;
    }

    public boolean isLoop() {
        return this.loop;
    }

    public void setLoop(boolean z) {
        this.loop = z;
    }
}
