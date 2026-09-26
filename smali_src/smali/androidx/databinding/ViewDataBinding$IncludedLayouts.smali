.class public Landroidx/databinding/ViewDataBinding$IncludedLayouts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IncludedLayouts"
.end annotation


# instance fields
.field public final indexes:[[I

.field public final layoutIds:[[I

.field public final layouts:[[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-array v0, p1, [[Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    .line 8
    .line 9
    new-array v0, p1, [[I

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    .line 12
    .line 13
    new-array p1, p1, [[I

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    .line 16
    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I[I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    .line 3
    .line 4
    aput-object p2, v0, p1

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    .line 7
    .line 8
    aput-object p3, p2, p1

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    .line 11
    .line 12
    aput-object p4, p2, p1

    .line 13
    return-void
.end method
