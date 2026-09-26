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

/* JADX INFO: loaded from: classes6.dex */
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
        for (int i10 = 0; i10 < size; i10++) {
            if (!Utils.isEqualsNotNull(list.get(i10).url, this.mediaList.get(i10).url)) {
                return false;
            }
        }
        return true;
    }

    public String getAreaName() {
        return this.areaName;
    }

    public boolean getNotCache() {
        return this.notCache;
    }

    public NVObject getNvObject() {
        return this.nvObject;
    }

    public boolean isLoadLowResVideo() {
        return this.loadLowResVideo;
    }

    public boolean isLoop() {
        return this.loop;
    }

    public boolean isPollOrQuiz() {
        return this.pollOrQuiz;
    }

    public boolean isVideoSupportLowRes() {
        return this.videoSupportLowRes;
    }

    public void setAreaName(String str) {
        this.areaName = str;
    }

    public void setLoadLowResVideo(boolean z6) {
        this.loadLowResVideo = z6;
    }

    public void setLoop(boolean z6) {
        this.loop = z6;
    }

    public void setNotCache(boolean z6) {
        this.notCache = z6;
    }

    public void setNvObject(NVObject nVObject) {
        this.nvObject = nVObject;
    }

    public void setPollOrQuiz(boolean z6) {
        this.pollOrQuiz = z6;
    }

    public void setVideoSupportLowRes(boolean z6) {
        this.videoSupportLowRes = z6;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NVMediaSource m1628clone() {
        NVMediaSource nVMediaSource = (NVMediaSource) JacksonUtils.readAs(JacksonUtils.writeAsString(this), NVMediaSource.class);
        nVMediaSource.contextWeakReference = this.contextWeakReference;
        nVMediaSource.nvObject = this.nvObject;
        return nVMediaSource;
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

    public String getLowResVideoUrl(int i10) {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0 || i10 < 0 || i10 >= this.mediaList.size()) {
            return null;
        }
        return Utils.getLowResVideoUrl(this.mediaList.get(i10).url);
    }

    public NVContext getNVContext() {
        WeakReference<NVContext> weakReference = this.contextWeakReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public String getVideoUrlWithRes(int i10, boolean z6) {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0) {
            return null;
        }
        return z6 ? getLowResVideoUrl(i10) : this.mediaList.get(i10).url;
    }

    public void setNVContext(NVContext nVContext) {
        this.contextWeakReference = new WeakReference<>(nVContext);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<Media> it = this.mediaList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getMediaUrl());
        }
        return "[" + sb.toString() + "]";
    }
}
