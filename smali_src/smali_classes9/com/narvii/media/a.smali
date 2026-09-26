.class public final synthetic Lcom/narvii/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/media/MediaGalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/MediaGalleryActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/a;->a:Lcom/narvii/media/MediaGalleryActivity;

    return-void
.end method


# virtual methods
.method public final onShareMediaClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/media/a;->a:Lcom/narvii/media/MediaGalleryActivity;

    invoke-static {v0}, Lcom/narvii/media/MediaGalleryActivity;->s(Lcom/narvii/media/MediaGalleryActivity;)V

    return-void
.end method
