.class Lcom/narvii/photos/PhotoManager$2;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/photos/PhotoManager;->upload(Lcom/narvii/photos/PhotoUploadSpec;Lcom/narvii/photos/PhotoUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/photos/PhotoManager;

.field final synthetic val$listener:Lcom/narvii/photos/PhotoUploadListener;

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/photos/PhotoManager;Lcom/narvii/photos/PhotoUploadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$2;->this$0:Lcom/narvii/photos/PhotoManager;

    iput-object p2, p0, Lcom/narvii/photos/PhotoManager$2;->val$listener:Lcom/narvii/photos/PhotoUploadListener;

    iput-object p3, p0, Lcom/narvii/photos/PhotoManager$2;->val$uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/photos/PhotoManager$2;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$2;->val$listener:Lcom/narvii/photos/PhotoUploadListener;

    iget-object v1, p0, Lcom/narvii/photos/PhotoManager$2;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/photos/PhotoManager$2;->val$str:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/narvii/photos/PhotoUploadListener;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
