.class public final synthetic Lcom/narvii/community/request/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/request/a;->a:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/community/request/a;->a:Lcom/narvii/util/Callback;

    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    invoke-static {v0, p1}, Lcom/narvii/community/request/CommunityRequestHelper;->a(Lcom/narvii/util/Callback;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
