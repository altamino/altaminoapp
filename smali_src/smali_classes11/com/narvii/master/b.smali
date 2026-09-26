.class public final synthetic Lcom/narvii/master/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/b;->a:Lcom/narvii/master/CommunitySearchListFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/b;->a:Lcom/narvii/master/CommunitySearchListFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/master/CommunitySearchListFragment;->t(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)V

    return-void
.end method
