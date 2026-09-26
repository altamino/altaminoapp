.class public Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/browser/trusted/TrustedWebActivityDisplayMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmersiveMode"
.end annotation


# static fields
.field private static final ID:I = 0x1

.field public static final KEY_CUTOUT_MODE:Ljava/lang/String; = "androidx.browser.trusted.displaymode.KEY_CUTOUT_MODE"

.field public static final KEY_STICKY:Ljava/lang/String; = "androidx.browser.trusted.displaymode.KEY_STICKY"


# instance fields
.field private final mIsSticky:Z

.field private final mLayoutInDisplayCutoutMode:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->mIsSticky:Z

    .line 6
    .line 7
    iput p2, p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->mLayoutInDisplayCutoutMode:I

    .line 8
    return-void
.end method
