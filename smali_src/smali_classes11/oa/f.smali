.class public final Loa/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final durationPerFrame:I

.field private final frameHeight:I

.field private final frameWidth:I

.field private final framesPerPageX:I

.field private final framesPerPageY:I

.field private final totalCount:I

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIII)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Loa/f;->urls:Ljava/util/List;

    .line 6
    .line 7
    iput p4, p0, Loa/f;->totalCount:I

    .line 8
    .line 9
    iput p5, p0, Loa/f;->durationPerFrame:I

    .line 10
    .line 11
    iput p2, p0, Loa/f;->frameWidth:I

    .line 12
    .line 13
    iput p3, p0, Loa/f;->frameHeight:I

    .line 14
    .line 15
    iput p6, p0, Loa/f;->framesPerPageX:I

    .line 16
    .line 17
    iput p7, p0, Loa/f;->framesPerPageY:I

    .line 18
    return-void
.end method
