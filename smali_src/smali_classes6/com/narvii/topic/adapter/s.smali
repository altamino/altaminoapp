.class public final synthetic Lcom/narvii/topic/adapter/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/adapter/PostListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/s;->a:Lcom/narvii/topic/adapter/PostListAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/adapter/s;->a:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->p(Lcom/narvii/topic/adapter/PostListAdapter;)V

    return-void
.end method
