package com.narvii.user.profile.post;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.feed.BackgroundPost;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.UserTitle;
import com.narvii.monetization.avatarframe.AvatarFrame;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public class UserProfilePost extends BackgroundPost {
    public String address;
    public AvatarFrame avatarFrame;
    public String content;
    public String icon;
    public int latitude;
    public int longitude;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String nickname;

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    public UserProfilePost() {
    }

    public UserProfilePost(User user) {
        this.nickname = user.nickname;
        this.content = user.content;
        this.extensions = user.extensions;
        this.address = user.address;
        this.latitude = user.latitude;
        this.longitude = user.longitude;
        this.icon = user.icon;
        this.mediaList = user.mediaList;
    }

    public User getPreviewUser(NVContext nVContext, User user, String str) {
        if (user == null) {
            user = new User();
        }
        user.uid = str;
        user.nickname = this.nickname;
        user.content = this.content;
        user.extensions = this.extensions;
        user.address = this.address;
        user.latitude = this.latitude;
        user.longitude = this.longitude;
        user.icon = this.icon;
        user.mediaList = this.mediaList;
        AvatarFrame avatarFrame = this.avatarFrame;
        if (avatarFrame != null) {
            user.avatarFrame = AvatarFrame.parseToAvatarFrameLite(avatarFrame);
        }
        return user;
    }

    public List<UserTitle> customTitles() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "customTitles");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                return Arrays.asList((Object[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, UserTitle[].class));
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return this.nickname;
    }

    @Override // com.narvii.post.PostObject
    public String content() {
        return this.content;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        return this.icon;
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        objectNode.remove("avatarFrame");
        return objectNode;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        List<Media> list;
        return StringUtils.isTrimEmpty(this.nickname) && StringUtils.isTrimEmpty(this.content) && ((list = this.mediaList) == null || list.size() == 0);
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        if (!(postObject instanceof UserProfilePost)) {
            return false;
        }
        UserProfilePost userProfilePost = (UserProfilePost) postObject;
        return Utils.isStringEquals(this.nickname, userProfilePost.nickname) && Utils.isStringEquals(this.content, userProfilePost.content) && Utils.isEquals(this.icon, userProfilePost.icon) && Utils.isListEquals(this.mediaList, userProfilePost.mediaList) && this.latitude == userProfilePost.latitude && this.longitude == userProfilePost.longitude && Utils.isEquals(this.extensions, userProfilePost.extensions) && Utils.isEquals(this.avatarFrame, userProfilePost.avatarFrame);
    }
}
