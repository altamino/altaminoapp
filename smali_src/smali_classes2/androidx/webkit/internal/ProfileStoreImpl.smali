.class public Landroidx/webkit/internal/ProfileStoreImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/webkit/ProfileStore;


# static fields
.field private static sInstance:Landroidx/webkit/ProfileStore;


# instance fields
.field private final mProfileStoreImpl:Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/webkit/internal/ProfileStoreImpl;->mProfileStoreImpl:Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    .line 7
    return-void
.end method
