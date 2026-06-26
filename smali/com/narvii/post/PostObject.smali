.class public interface abstract Lcom/narvii/post/PostObject;
.super Ljava/lang/Object;
.source "PostObject.java"


# virtual methods
.method public abstract content()Ljava/lang/String;
.end method

.method public abstract hasVideo()Z
.end method

.method public abstract icon()Ljava/lang/String;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isSame(Lcom/narvii/post/PostObject;)Z
.end method

.method public abstract postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
.end method

.method public abstract title()Ljava/lang/String;
.end method
