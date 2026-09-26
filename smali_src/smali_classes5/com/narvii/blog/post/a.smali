.class public final synthetic Lcom/narvii/blog/post/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field public final synthetic a:Lcom/narvii/blog/post/ImagePostActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/blog/post/ImagePostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/a;->a:Lcom/narvii/blog/post/ImagePostActivity;

    return-void
.end method


# virtual methods
.method public final onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/blog/post/a;->a:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/narvii/blog/post/ImagePostActivity;->y(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    return-void
.end method
