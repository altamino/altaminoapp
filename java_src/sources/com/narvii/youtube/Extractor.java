package com.narvii.youtube;

import aa.d;
import aa.h;
import aa.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import oa.i;
import oa.s;
import x9.p;

/* JADX INFO: loaded from: classes11.dex */
public class Extractor {
    /* JADX WARN: Code duplicated, block: B:16:0x004b A[Catch: all -> 0x003b, IOException -> 0x003e, NullPointerException -> 0x0199, h -> 0x01a2, a -> 0x01ab, b -> 0x01b0, j -> 0x01b9, TryCatch #2 {b -> 0x01b0, h -> 0x01a2, j -> 0x01b9, IOException -> 0x003e, NullPointerException -> 0x0199, a -> 0x01ab, all -> 0x003b, blocks: (B:3:0x0011, B:5:0x0034, B:16:0x004b, B:18:0x0054, B:21:0x005b, B:22:0x0064, B:24:0x006a, B:25:0x0093, B:27:0x009e, B:28:0x00a2, B:30:0x00a8, B:31:0x00d1, B:33:0x00dc, B:34:0x00e0, B:36:0x00e6, B:37:0x010f, B:13:0x0043, B:38:0x0115), top: B:60:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x005a  */
    /* JADX WARN: Code duplicated, block: B:24:0x006a A[Catch: all -> 0x003b, IOException -> 0x003e, NullPointerException -> 0x0199, h -> 0x01a2, a -> 0x01ab, b -> 0x01b0, j -> 0x01b9, LOOP:0: B:22:0x0064->B:24:0x006a, LOOP_END, TryCatch #2 {b -> 0x01b0, h -> 0x01a2, j -> 0x01b9, IOException -> 0x003e, NullPointerException -> 0x0199, a -> 0x01ab, all -> 0x003b, blocks: (B:3:0x0011, B:5:0x0034, B:16:0x004b, B:18:0x0054, B:21:0x005b, B:22:0x0064, B:24:0x006a, B:25:0x0093, B:27:0x009e, B:28:0x00a2, B:30:0x00a8, B:31:0x00d1, B:33:0x00dc, B:34:0x00e0, B:36:0x00e6, B:37:0x010f, B:13:0x0043, B:38:0x0115), top: B:60:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x009e A[Catch: all -> 0x003b, IOException -> 0x003e, NullPointerException -> 0x0199, h -> 0x01a2, a -> 0x01ab, b -> 0x01b0, j -> 0x01b9, TryCatch #2 {b -> 0x01b0, h -> 0x01a2, j -> 0x01b9, IOException -> 0x003e, NullPointerException -> 0x0199, a -> 0x01ab, all -> 0x003b, blocks: (B:3:0x0011, B:5:0x0034, B:16:0x004b, B:18:0x0054, B:21:0x005b, B:22:0x0064, B:24:0x006a, B:25:0x0093, B:27:0x009e, B:28:0x00a2, B:30:0x00a8, B:31:0x00d1, B:33:0x00dc, B:34:0x00e0, B:36:0x00e6, B:37:0x010f, B:13:0x0043, B:38:0x0115), top: B:60:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a8 A[Catch: all -> 0x003b, IOException -> 0x003e, NullPointerException -> 0x0199, h -> 0x01a2, a -> 0x01ab, b -> 0x01b0, j -> 0x01b9, LOOP:1: B:28:0x00a2->B:30:0x00a8, LOOP_END, TryCatch #2 {b -> 0x01b0, h -> 0x01a2, j -> 0x01b9, IOException -> 0x003e, NullPointerException -> 0x0199, a -> 0x01ab, all -> 0x003b, blocks: (B:3:0x0011, B:5:0x0034, B:16:0x004b, B:18:0x0054, B:21:0x005b, B:22:0x0064, B:24:0x006a, B:25:0x0093, B:27:0x009e, B:28:0x00a2, B:30:0x00a8, B:31:0x00d1, B:33:0x00dc, B:34:0x00e0, B:36:0x00e6, B:37:0x010f, B:13:0x0043, B:38:0x0115), top: B:60:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00dc A[Catch: all -> 0x003b, IOException -> 0x003e, NullPointerException -> 0x0199, h -> 0x01a2, a -> 0x01ab, b -> 0x01b0, j -> 0x01b9, TryCatch #2 {b -> 0x01b0, h -> 0x01a2, j -> 0x01b9, IOException -> 0x003e, NullPointerException -> 0x0199, a -> 0x01ab, all -> 0x003b, blocks: (B:3:0x0011, B:5:0x0034, B:16:0x004b, B:18:0x0054, B:21:0x005b, B:22:0x0064, B:24:0x006a, B:25:0x0093, B:27:0x009e, B:28:0x00a2, B:30:0x00a8, B:31:0x00d1, B:33:0x00dc, B:34:0x00e0, B:36:0x00e6, B:37:0x010f, B:13:0x0043, B:38:0x0115), top: B:60:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00e6 A[Catch: all -> 0x003b, IOException -> 0x003e, NullPointerException -> 0x0199, h -> 0x01a2, a -> 0x01ab, b -> 0x01b0, j -> 0x01b9, LOOP:2: B:34:0x00e0->B:36:0x00e6, LOOP_END, TryCatch #2 {b -> 0x01b0, h -> 0x01a2, j -> 0x01b9, IOException -> 0x003e, NullPointerException -> 0x0199, a -> 0x01ab, all -> 0x003b, blocks: (B:3:0x0011, B:5:0x0034, B:16:0x004b, B:18:0x0054, B:21:0x005b, B:22:0x0064, B:24:0x006a, B:25:0x0093, B:27:0x009e, B:28:0x00a2, B:30:0x00a8, B:31:0x00d1, B:33:0x00dc, B:34:0x00e0, B:36:0x00e6, B:37:0x010f, B:13:0x0043, B:38:0x0115), top: B:60:0x0011 }] */
    ExtractResult extract(String str) throws IOException, d {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        String str2 = "";
        ExtractResult extractResult = new ExtractResult();
        try {
            i iVarG = i.g("https://www.youtube.com/watch?v=" + str);
            List<s> listK = iVarG.k();
            List<s> listJ = iVarG.j();
            List<oa.a> listF = iVarG.f();
            if (listK != null && !listK.isEmpty()) {
                extractResult.result = new YoutubeVideoList();
                if (listK != null) {
                    listK = listJ;
                } else {
                    listK = listJ;
                }
                arrayList = new ArrayList();
                for (s sVar : listK) {
                    YoutubeVideo youtubeVideo = new YoutubeVideo();
                    youtubeVideo.url = sVar.c();
                    youtubeVideo.resolution = sVar.f();
                    youtubeVideo.type = sVar.e();
                    youtubeVideo.mimeType = sVar.d().mimeType;
                    arrayList.add(youtubeVideo);
                }
                extractResult.result.list = arrayList;
                arrayList2 = new ArrayList();
                if (listJ != null) {
                    for (s sVar2 : listJ) {
                        YoutubeVideo youtubeVideo2 = new YoutubeVideo();
                        youtubeVideo2.url = sVar2.c();
                        youtubeVideo2.resolution = sVar2.f();
                        youtubeVideo2.type = sVar2.e();
                        youtubeVideo2.mimeType = sVar2.d().mimeType;
                        arrayList2.add(youtubeVideo2);
                    }
                }
                extractResult.result.videoOnlyList = arrayList2;
                arrayList3 = new ArrayList();
                if (listF != null) {
                    for (oa.a aVar : listF) {
                        YoutubeVideo youtubeVideo3 = new YoutubeVideo();
                        youtubeVideo3.url = aVar.c();
                        youtubeVideo3.averageBitrate = aVar.f();
                        youtubeVideo3.type = aVar.e();
                        youtubeVideo3.mimeType = aVar.d().mimeType;
                        arrayList3.add(youtubeVideo3);
                    }
                }
                extractResult.result.audioList = arrayList3;
            } else if (listJ == null || listJ.isEmpty()) {
                extractResult.errorCode = 15;
                extractResult.errorMsg = "Could not get any stream";
            } else {
                extractResult.result = new YoutubeVideoList();
                if (listK != null || listK.isEmpty()) {
                    listK = listJ;
                }
                arrayList = new ArrayList();
                while (r7.hasNext()) {
                    YoutubeVideo youtubeVideo4 = new YoutubeVideo();
                    youtubeVideo4.url = sVar.c();
                    youtubeVideo4.resolution = sVar.f();
                    youtubeVideo4.type = sVar.e();
                    youtubeVideo4.mimeType = sVar.d().mimeType;
                    arrayList.add(youtubeVideo4);
                }
                extractResult.result.list = arrayList;
                arrayList2 = new ArrayList();
                if (listJ != null) {
                    while (r8.hasNext()) {
                        YoutubeVideo youtubeVideo5 = new YoutubeVideo();
                        youtubeVideo5.url = sVar2.c();
                        youtubeVideo5.resolution = sVar2.f();
                        youtubeVideo5.type = sVar2.e();
                        youtubeVideo5.mimeType = sVar2.d().mimeType;
                        arrayList2.add(youtubeVideo5);
                    }
                }
                extractResult.result.videoOnlyList = arrayList2;
                arrayList3 = new ArrayList();
                if (listF != null) {
                    while (r14.hasNext()) {
                        YoutubeVideo youtubeVideo6 = new YoutubeVideo();
                        youtubeVideo6.url = aVar.c();
                        youtubeVideo6.averageBitrate = aVar.f();
                        youtubeVideo6.type = aVar.e();
                        youtubeVideo6.mimeType = aVar.d().mimeType;
                        arrayList3.add(youtubeVideo6);
                    }
                }
                extractResult.result.audioList = arrayList3;
            }
        } catch (aa.b unused) {
            extractResult.errorCode = 14;
            extractResult.errorMsg = "Content not available";
        } catch (h unused2) {
            extractResult.errorCode = 16;
            extractResult.errorMsg = "Could not parse website";
        } catch (j unused3) {
            extractResult.errorCode = 17;
            extractResult.errorMsg = "Re-Captcha";
        } catch (IOException e) {
            extractResult.errorCode = 2;
            String simpleName = e.getClass().getSimpleName();
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder();
            sb.append("Error (");
            sb.append(simpleName);
            if (message != null && message.length() != 0) {
                str2 = ": " + message;
            }
            sb.append(str2);
            sb.append(")");
            extractResult.errorMsg = sb.toString();
        } catch (NullPointerException unused4) {
            extractResult.errorCode = 18;
            extractResult.errorMsg = "Error NPE";
        } catch (i.a unused5) {
            extractResult.errorCode = 15;
            extractResult.errorMsg = "Could not get any stream";
        } catch (Throwable th) {
            extractResult.errorCode = 1;
            String simpleName2 = th.getClass().getSimpleName();
            String message2 = th.getMessage();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error (");
            sb2.append(simpleName2);
            if (message2 != null && message2.length() != 0) {
                str2 = ": " + message2;
            }
            sb2.append(str2);
            sb2.append(")");
            extractResult.errorMsg = sb2.toString();
        }
        return extractResult;
    }

    Extractor() {
        p.e(DownloaderImpl.init(null));
    }
}
