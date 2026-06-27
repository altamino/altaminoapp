package com.narvii.services;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.blog.post.BlogPost;
import com.narvii.item.post.ItemPost;
import com.narvii.model.Media;
import com.narvii.modulization.Module;
import com.narvii.post.DraftManager;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class DraftManagerProvider implements ServiceProvider<DraftManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DraftManager draftManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DraftManager draftManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DraftManager draftManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DraftManager draftManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DraftManager draftManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public DraftManager create(NVContext nVContext) {
        DraftManager draftManager = new DraftManager(nVContext, 0);
        Context context = nVContext.getContext();
        convertOldDrafts(context.getSharedPreferences("post_blog", 0), "blog", draftManager);
        convertOldDrafts(context.getSharedPreferences("post_item", 0), "item", draftManager);
        convertOldDrafts(context.getSharedPreferences("post_topic", 0), "topic", draftManager);
        return draftManager;
    }

    public static void convertOldDrafts(SharedPreferences sharedPreferences, String str, DraftManager draftManager) {
        PostObject postObject;
        if (sharedPreferences.contains(Module.MODULE_POSTS)) {
            boolean z = false;
            if (sharedPreferences.getInt("convert", 0) == 0) {
                ObjectNode objectNodeCreateObjectNode = null;
                try {
                    ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode(sharedPreferences.getString(Module.MODULE_POSTS, null));
                    if ("item".equals(str)) {
                        JsonNode jsonNode = objectNodeCreateObjectNode2.get("mediaList");
                        objectNodeCreateObjectNode2.remove("mediaList");
                        if (jsonNode instanceof ArrayNode) {
                            ArrayList listAs = JacksonUtils.readListAs(jsonNode.toString(), Media.class);
                            if (listAs.size() > 0) {
                                String str2 = ((Media) listAs.get(0)).url;
                                if (str2 != null && str2.startsWith("http://")) {
                                    objectNodeCreateObjectNode2.put("icon", ((Media) listAs.get(0)).url);
                                }
                                listAs.remove(0);
                                Iterator it = listAs.iterator();
                                while (it.hasNext()) {
                                    if (!((Media) it.next()).url.startsWith("http://")) {
                                        it.remove();
                                    }
                                }
                                if (listAs.size() > 0) {
                                    objectNodeCreateObjectNode2.put("mediaList", (ArrayNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(listAs));
                                }
                            }
                        }
                        postObject = (PostObject) JacksonUtils.readAs(objectNodeCreateObjectNode2.toString(), ItemPost.class);
                    } else {
                        JsonNode jsonNode2 = objectNodeCreateObjectNode2.get("mediaList");
                        objectNodeCreateObjectNode2.remove("mediaList");
                        if (jsonNode2 instanceof ArrayNode) {
                            ArrayList listAs2 = JacksonUtils.readListAs(jsonNode2.toString(), Media.class);
                            Iterator it2 = listAs2.iterator();
                            while (it2.hasNext()) {
                                if (!((Media) it2.next()).url.startsWith("http://")) {
                                    it2.remove();
                                }
                            }
                            if (listAs2.size() > 0) {
                                objectNodeCreateObjectNode2.put("mediaList", (ArrayNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(listAs2));
                            }
                        }
                        postObject = (PostObject) JacksonUtils.readAs(objectNodeCreateObjectNode2.toString(), BlogPost.class);
                    }
                    String string = sharedPreferences.getString("id", null);
                    if (!TextUtils.isEmpty(string)) {
                        objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                        if ("item".equals(str)) {
                            ArrayList<String> arrayListSplit = StringUtils.split(string, "|");
                            objectNodeCreateObjectNode.put("itemId", arrayListSplit.get(0));
                            if (arrayListSplit.size() > 1 && "fork".equals(arrayListSplit.get(1))) {
                                z = true;
                            }
                            objectNodeCreateObjectNode.put("fork", z);
                        } else {
                            objectNodeCreateObjectNode.put("blogId", string);
                        }
                    }
                    draftManager.createDraft(str, objectNodeCreateObjectNode, postObject);
                } catch (Exception e) {
                    Log.e("fail to convert old draft " + str, e);
                }
                sharedPreferences.edit().putInt("convert", 1).commit();
            }
        }
    }
}
