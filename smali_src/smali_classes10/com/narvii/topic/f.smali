.class public final synthetic Lcom/narvii/topic/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/widget/NVImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/f;->a:Lcom/narvii/widget/NVImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/f;->a:Lcom/narvii/widget/NVImageView;

    invoke-static {v0}, Lcom/narvii/topic/TopicTabFragment;->u(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
