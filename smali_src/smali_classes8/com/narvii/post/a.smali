.class public final synthetic Lcom/narvii/post/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/post/BasePostActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/post/BasePostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/a;->a:Lcom/narvii/post/BasePostActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/post/a;->a:Lcom/narvii/post/BasePostActivity;

    invoke-static {v0}, Lcom/narvii/post/BasePostActivity;->s(Lcom/narvii/post/BasePostActivity;)V

    return-void
.end method
