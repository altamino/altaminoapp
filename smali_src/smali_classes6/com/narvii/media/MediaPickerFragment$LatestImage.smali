.class Lcom/narvii/media/MediaPickerFragment$LatestImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LatestImage"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field dateAdded:J

.field imageId:J

.field path:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/media/MediaPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$LatestImage;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
