.class public Lcom/meishe/cafconvertor/gifdecoder/GifHeader;
.super Ljava/lang/Object;


# instance fields
.field a:[I

.field b:I

.field c:I

.field d:Lcom/meishe/cafconvertor/gifdecoder/GifFrame;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishe/cafconvertor/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/GifHeader;->a:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/meishe/cafconvertor/gifdecoder/GifHeader;->b:I

    iput v0, p0, Lcom/meishe/cafconvertor/gifdecoder/GifHeader;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/GifHeader;->e:Ljava/util/List;

    return-void
.end method
