.class Landroidx/cardview/widget/CardViewApi17Impl;
.super Landroidx/cardview/widget/CardViewBaseImpl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public n()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/cardview/widget/CardViewApi17Impl$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardViewApi17Impl$1;-><init>(Landroidx/cardview/widget/CardViewApi17Impl;)V

    .line 6
    .line 7
    sput-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 8
    return-void
.end method
