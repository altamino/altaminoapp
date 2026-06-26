.class public Lcom/narvii/util/BundleUtils$SizeTree;
.super Ljava/lang/Object;
.source "BundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/BundleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeTree"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public totalSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/narvii/util/BundleUtils$SizeTree;->key:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/narvii/util/BundleUtils$SizeTree;->totalSize:I

    return-void
.end method
