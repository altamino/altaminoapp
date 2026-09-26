.class public final La3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# static fields
.field public static final MARK_FILL_FILLED:I = 0x1

.field public static final MARK_FILL_OPEN:I = 0x2

.field public static final MARK_FILL_UNKNOWN:I = 0x0

.field public static final MARK_SHAPE_CIRCLE:I = 0x1

.field public static final MARK_SHAPE_DOT:I = 0x2

.field public static final MARK_SHAPE_NONE:I = 0x0

.field public static final MARK_SHAPE_SESAME:I = 0x3


# instance fields
.field public markFill:I

.field public markShape:I

.field public final position:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, La3/e;->markShape:I

    .line 6
    .line 7
    iput p2, p0, La3/e;->markFill:I

    .line 8
    .line 9
    iput p3, p0, La3/e;->position:I

    .line 10
    return-void
.end method
