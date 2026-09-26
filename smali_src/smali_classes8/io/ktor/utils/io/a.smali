.class public Lio/ktor/utils/io/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/utils/io/c;
.implements Lio/ktor/utils/io/g;
.implements Lio/ktor/utils/io/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n+ 2 RingBufferCapacity.kt\nio/ktor/utils/io/internal/RingBufferCapacity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 8 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 9 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 10 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,2411:1\n2110#1,2:2436\n459#1,4:2443\n466#1,2:2448\n464#1:2450\n459#1,4:2451\n466#1,2:2456\n464#1:2458\n459#1,4:2463\n466#1,2:2468\n464#1:2470\n459#1,4:2472\n466#1,2:2477\n464#1:2479\n849#1,4:2481\n459#1,4:2485\n466#1,2:2490\n464#1:2492\n853#1,15:2493\n849#1,4:2508\n459#1,4:2512\n466#1,2:2517\n464#1:2519\n853#1,15:2520\n849#1,4:2535\n459#1,4:2539\n466#1,2:2544\n464#1:2546\n853#1,15:2547\n849#1,4:2562\n459#1,4:2566\n466#1,2:2571\n464#1:2573\n853#1,15:2574\n849#1,4:2589\n459#1,4:2593\n466#1,2:2598\n464#1:2600\n853#1,15:2601\n849#1,4:2616\n459#1,4:2620\n466#1,2:2625\n464#1:2627\n853#1,15:2628\n459#1,4:2643\n466#1,2:2648\n464#1:2650\n964#1:2651\n966#1:2653\n1036#1,7:2654\n929#1,2:2661\n1043#1,2:2663\n931#1:2665\n1045#1:2666\n967#1,76:2667\n929#1,2:2743\n1043#1,2:2745\n931#1:2747\n1045#1:2748\n1030#1,3:2749\n979#1,32:2752\n1033#1:2784\n972#1:2785\n964#1:2786\n966#1:2788\n1036#1,7:2789\n929#1,2:2796\n1043#1,2:2798\n931#1:2800\n1045#1:2801\n967#1,76:2802\n929#1,2:2878\n1043#1,2:2880\n931#1:2882\n1045#1:2883\n1030#1,3:2884\n979#1,32:2887\n1033#1:2919\n972#1:2920\n964#1:2921\n966#1:2923\n1036#1,7:2924\n929#1,2:2931\n1043#1,2:2933\n931#1:2935\n1045#1:2936\n967#1,76:2937\n929#1,2:3013\n1043#1,2:3015\n931#1:3017\n1045#1:3018\n1030#1,3:3019\n979#1,32:3022\n1033#1:3054\n972#1:3055\n964#1:3056\n966#1:3058\n1036#1,7:3059\n929#1,2:3066\n1043#1,2:3068\n931#1:3070\n1045#1:3071\n967#1,76:3072\n929#1,2:3148\n1043#1,2:3150\n931#1:3152\n1045#1:3153\n1030#1,3:3154\n979#1,32:3157\n1033#1:3189\n972#1:3190\n1036#1,7:3191\n929#1,2:3198\n1043#1,2:3200\n931#1:3202\n1045#1:3203\n979#1,32:3204\n1019#1,24:3236\n929#1,2:3260\n1043#1,2:3262\n931#1:3264\n1045#1:3265\n1030#1,3:3266\n979#1,32:3269\n1033#1:3301\n993#1,18:3302\n1036#1,7:3320\n929#1,2:3327\n1043#1,2:3329\n931#1:3331\n1045#1:3332\n979#1,32:3333\n929#1,3:3365\n440#1:3370\n441#1,7:3372\n459#1,4:3381\n466#1,2:3386\n464#1:3388\n449#1,8:3389\n440#1:3397\n441#1,7:3399\n449#1,8:3407\n440#1:3415\n441#1,7:3417\n449#1,8:3426\n440#1:3434\n441#1,7:3436\n449#1,8:3444\n440#1:3452\n441#1,16:3454\n440#1:3470\n441#1,16:3472\n440#1:3488\n441#1,16:3490\n459#1,4:3506\n466#1,2:3511\n464#1:3513\n459#1,4:3515\n466#1,2:3520\n464#1:3522\n459#1,4:3523\n466#1,2:3528\n464#1:3530\n440#1:3533\n441#1,16:3535\n459#1,4:3551\n466#1,2:3556\n464#1:3558\n459#1,4:3559\n466#1,2:3564\n464#1:3566\n459#1,4:3569\n466#1,2:3574\n464#1:3576\n2197#1,3:3628\n2201#1,3:3632\n2341#1,3:3636\n2345#1:3640\n2197#1,3:3641\n2201#1,3:3645\n2346#1,5:3648\n2197#1,7:3653\n2197#1,3:3660\n2201#1,3:3664\n2341#1,3:3679\n2345#1,6:3683\n12#2:2412\n18#2:2413\n18#2:2415\n12#2:2416\n18#2:2421\n12#2:2429\n12#2:2431\n12#2:2442\n12#2:2447\n12#2:2455\n12#2:2461\n12#2:2467\n12#2:2476\n12#2:2489\n12#2:2516\n12#2:2543\n12#2:2570\n12#2:2597\n12#2:2624\n12#2:2647\n18#2:3379\n18#2:3380\n12#2:3385\n18#2:3406\n18#2:3425\n18#2:3443\n12#2:3510\n12#2:3514\n12#2:3519\n12#2:3527\n12#2:3555\n12#2:3563\n12#2:3567\n12#2:3568\n12#2:3573\n12#2:3577\n12#2:3622\n12#2:3623\n12#2:3624\n12#2:3625\n12#2:3626\n12#2:3627\n12#2:3631\n12#2:3635\n12#2:3644\n12#2:3663\n18#2:3667\n1#3:2414\n1#3:2652\n1#3:2787\n1#3:2922\n1#3:3057\n1#3:3371\n1#3:3398\n1#3:3416\n1#3:3435\n1#3:3453\n1#3:3471\n1#3:3489\n1#3:3534\n1#3:3639\n1#3:3682\n186#4,4:2417\n186#4,4:2422\n186#4,3:2426\n189#4:2430\n186#4,4:2432\n164#4,4:2438\n74#5:2459\n74#5:2462\n69#5:3424\n74#5:3589\n74#5:3611\n361#6:2460\n361#6:2471\n361#6:2480\n355#6:3368\n355#6:3369\n43#7:3531\n43#7:3532\n12#8,7:3578\n19#8,4:3596\n12#8,7:3600\n19#8,4:3618\n488#9,4:3585\n492#9,6:3590\n488#9,4:3607\n492#9,6:3612\n314#10,11:3668\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n*L\n377#1:2436,2\n474#1:2443,4\n474#1:2448,2\n474#1:2450\n512#1:2451,4\n512#1:2456,2\n512#1:2458\n539#1:2463,4\n539#1:2468,2\n539#1:2470\n637#1:2472,4\n637#1:2477,2\n637#1:2479\n822#1:2481,4\n822#1:2485,4\n822#1:2490,2\n822#1:2492\n822#1:2493,15\n826#1:2508,4\n826#1:2512,4\n826#1:2517,2\n826#1:2519\n826#1:2520,15\n830#1:2535,4\n830#1:2539,4\n830#1:2544,2\n830#1:2546\n830#1:2547,15\n834#1:2562,4\n834#1:2566,4\n834#1:2571,2\n834#1:2573\n834#1:2574,15\n838#1:2589,4\n838#1:2593,4\n838#1:2598,2\n838#1:2600\n838#1:2601,15\n842#1:2616,4\n842#1:2620,4\n842#1:2625,2\n842#1:2627\n842#1:2628,15\n852#1:2643,4\n852#1:2648,2\n852#1:2650\n936#1:2651\n936#1:2653\n936#1:2654,7\n936#1:2661,2\n936#1:2663,2\n936#1:2665\n936#1:2666\n936#1:2667,76\n936#1:2743,2\n936#1:2745,2\n936#1:2747\n936#1:2748\n936#1:2749,3\n936#1:2752,32\n936#1:2784\n936#1:2785\n940#1:2786\n940#1:2788\n940#1:2789,7\n940#1:2796,2\n940#1:2798,2\n940#1:2800\n940#1:2801\n940#1:2802,76\n940#1:2878,2\n940#1:2880,2\n940#1:2882\n940#1:2883\n940#1:2884,3\n940#1:2887,32\n940#1:2919\n940#1:2920\n944#1:2921\n944#1:2923\n944#1:2924,7\n944#1:2931,2\n944#1:2933,2\n944#1:2935\n944#1:2936\n944#1:2937,76\n944#1:3013,2\n944#1:3015,2\n944#1:3017\n944#1:3018\n944#1:3019,3\n944#1:3022,32\n944#1:3054\n944#1:3055\n948#1:3056\n948#1:3058\n948#1:3059,7\n948#1:3066,2\n948#1:3068,2\n948#1:3070\n948#1:3071\n948#1:3072,76\n948#1:3148,2\n948#1:3150,2\n948#1:3152\n948#1:3153\n948#1:3154,3\n948#1:3157,32\n948#1:3189\n948#1:3190\n966#1:3191,7\n966#1:3198,2\n966#1:3200,2\n966#1:3202\n966#1:3203\n969#1:3204,32\n970#1:3236,24\n970#1:3260,2\n970#1:3262,2\n970#1:3264\n970#1:3265\n970#1:3266,3\n970#1:3269,32\n970#1:3301\n983#1:3302,18\n1029#1:3320,7\n1029#1:3327,2\n1029#1:3329,2\n1029#1:3331\n1029#1:3332\n1032#1:3333,32\n1042#1:3365,3\n1196#1:3370\n1196#1:3372,7\n1209#1:3381,4\n1209#1:3386,2\n1209#1:3388\n1196#1:3389,8\n1322#1:3397\n1322#1:3399,7\n1322#1:3407,8\n1352#1:3415\n1352#1:3417,7\n1352#1:3426,8\n1376#1:3434\n1376#1:3436,7\n1376#1:3444,8\n1455#1:3452\n1455#1:3454,16\n1525#1:3470\n1525#1:3472,16\n1535#1:3488\n1535#1:3490,16\n1640#1:3506,4\n1640#1:3511,2\n1640#1:3513\n1675#1:3515,4\n1675#1:3520,2\n1675#1:3522\n1693#1:3523,4\n1693#1:3528,2\n1693#1:3530\n1754#1:3533\n1754#1:3535,16\n1775#1:3551,4\n1775#1:3556,2\n1775#1:3558\n1796#1:3559,4\n1796#1:3564,2\n1796#1:3566\n1902#1:3569,4\n1902#1:3574,2\n1902#1:3576\n2209#1:3628,3\n2209#1:3632,3\n2225#1:3636,3\n2225#1:3640\n2225#1:3641,3\n2225#1:3645,3\n2225#1:3648,5\n2225#1:3653,7\n2231#1:3660,3\n2231#1:3664,3\n2326#1:3679,3\n2326#1:3683,6\n95#1:2412\n98#1:2413\n181#1:2415\n182#1:2416\n269#1:2421\n302#1:2429\n309#1:2431\n462#1:2442\n474#1:2447\n512#1:2455\n531#1:2461\n539#1:2467\n637#1:2476\n822#1:2489\n826#1:2516\n830#1:2543\n834#1:2570\n838#1:2597\n842#1:2624\n852#1:2647\n1198#1:3379\n1202#1:3380\n1209#1:3385\n1338#1:3406\n1364#1:3425\n1387#1:3443\n1640#1:3510\n1641#1:3514\n1675#1:3519\n1693#1:3527\n1775#1:3555\n1796#1:3563\n1858#1:3567\n1880#1:3568\n1902#1:3573\n1930#1:3577\n2139#1:3622\n2158#1:3623\n2164#1:3624\n2179#1:3625\n2184#1:3626\n2199#1:3627\n2209#1:3631\n2221#1:3635\n2225#1:3644\n2231#1:3663\n2258#1:3667\n936#1:2652\n940#1:2787\n944#1:2922\n948#1:3057\n1196#1:3371\n1322#1:3398\n1352#1:3416\n1376#1:3435\n1455#1:3453\n1525#1:3471\n1535#1:3489\n1754#1:3534\n2225#1:3639\n2326#1:3682\n224#1:2417,4\n276#1:2422,4\n292#1:2426,3\n292#1:2430\n316#1:2432,4\n398#1:2438,4\n513#1:2459\n505#1:2462\n1356#1:3424\n2072#1:3589\n2087#1:3611\n531#1:2460\n607#1:2471\n723#1:2480\n1099#1:3368\n1122#1:3369\n1725#1:3531\n1741#1:3532\n2069#1:3578,7\n2069#1:3596,4\n2084#1:3600,7\n2084#1:3618,4\n2071#1:3585,4\n2071#1:3590,6\n2086#1:3607,4\n2086#1:3612,6\n2311#1:3668,11\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ReservedLongIndex:I = -0x8

.field private static final synthetic _closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic _writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closed:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _readOp:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field volatile synthetic _writeOp:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile attachedJob:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final autoFlush:Z

.field private volatile joining:Lio/ktor/utils/io/internal/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Lio/ktor/utils/io/internal/g$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private readPosition:I

.field private final readSession:Lio/ktor/utils/io/internal/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final readSuspendContinuationCache:Lio/ktor/utils/io/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reservedSize:I

.field private volatile totalBytesRead:J

.field private volatile totalBytesWritten:J

.field private writePosition:I

.field private final writeSession:Lio/ktor/utils/io/internal/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final writeSuspendContinuationCache:Lio/ktor/utils/io/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/b<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final writeSuspension:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile writeSuspensionSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/ktor/utils/io/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/a$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lio/ktor/utils/io/a;->Companion:Lio/ktor/utils/io/a$a;

    const-string v0, "_state"

    const-class v1, Lio/ktor/utils/io/a;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/a;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/a;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_readOp"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/a;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_writeOp"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/a;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lio/ktor/utils/io/internal/e;->b()Lt7/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lio/ktor/utils/io/a;-><init>(ZLt7/g;I)V

    .line 11
    new-instance v0, Lio/ktor/utils/io/internal/g$c;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v2, "content.slice()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lio/ktor/utils/io/internal/g$c;-><init>(Ljava/nio/ByteBuffer;I)V

    iget-object p1, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 12
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/i;->i()V

    .line 13
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/g$c;->l()Lio/ktor/utils/io/internal/g$g;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/a;->_state:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->p0()V

    .line 15
    invoke-static {p0}, Lio/ktor/utils/io/k;->a(Lio/ktor/utils/io/j;)Z

    .line 16
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    return-void
.end method

.method public constructor <init>(ZLt7/g;I)V
    .locals 1
    .param p2    # Lt7/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lt7/g<",
            "Lio/ktor/utils/io/internal/g$c;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/ktor/utils/io/a;->autoFlush:Z

    iput-object p2, p0, Lio/ktor/utils/io/a;->pool:Lt7/g;

    iput p3, p0, Lio/ktor/utils/io/a;->reservedSize:I

    .line 2
    sget-object p1, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    iput-object p1, p0, Lio/ktor/utils/io/a;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/ktor/utils/io/a;->_closed:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/utils/io/a;->_readOp:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/utils/io/a;->_writeOp:Ljava/lang/Object;

    .line 3
    new-instance p1, Lio/ktor/utils/io/internal/f;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/f;-><init>(Lio/ktor/utils/io/a;)V

    iput-object p1, p0, Lio/ktor/utils/io/a;->readSession:Lio/ktor/utils/io/internal/f;

    .line 4
    new-instance p1, Lio/ktor/utils/io/internal/l;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/l;-><init>(Lio/ktor/utils/io/a;)V

    iput-object p1, p0, Lio/ktor/utils/io/a;->writeSession:Lio/ktor/utils/io/internal/l;

    .line 5
    new-instance p1, Lio/ktor/utils/io/internal/b;

    invoke-direct {p1}, Lio/ktor/utils/io/internal/b;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/a;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/b;

    .line 6
    new-instance p1, Lio/ktor/utils/io/internal/b;

    invoke-direct {p1}, Lio/ktor/utils/io/internal/b;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/a;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/b;

    .line 7
    new-instance p1, Lio/ktor/utils/io/a$n;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/a$n;-><init>(Lio/ktor/utils/io/a;)V

    iput-object p1, p0, Lio/ktor/utils/io/a;->writeSuspension:Le8/l;

    return-void
.end method

.method public synthetic constructor <init>(ZLt7/g;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 8
    invoke-static {}, Lio/ktor/utils/io/internal/e;->c()Lt7/g;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x8

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;-><init>(ZLt7/g;I)V

    return-void
.end method

.method public static final synthetic A(Lio/ktor/utils/io/a;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->y0()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final A0(Lio/ktor/utils/io/internal/d;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->B0(Z)Z

    .line 5
    move-result v1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/a;->L(Lio/ktor/utils/io/internal/d;)V

    .line 13
    .line 14
    sget-object p1, Lio/ktor/utils/io/a;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lkotlin/coroutines/d;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "Joining is in progress"

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/a;->s0()V

    .line 47
    return v0
.end method

.method public static final synthetic B(Lio/ktor/utils/io/a;Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->M0(Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final B0(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    .line 4
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/a;->_state:Ljava/lang/Object;

    .line 5
    move-object v3, v2

    .line 6
    .line 7
    check-cast v3, Lio/ktor/utils/io/internal/g;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 11
    move-result-object v4

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 19
    move-result-object v5

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v5, v0

    .line 22
    .line 23
    :goto_0
    if-nez v5, :cond_2

    .line 24
    .line 25
    iget-object v1, v1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->j()V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/a;->s0()V

    .line 32
    move-object v1, v0

    .line 33
    .line 34
    :cond_3
    sget-object v5, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 35
    const/4 v6, 0x1

    .line 36
    .line 37
    if-ne v3, v5, :cond_4

    .line 38
    return v6

    .line 39
    .line 40
    :cond_4
    sget-object v7, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 41
    .line 42
    if-ne v3, v7, :cond_5

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_5
    if-eqz v4, :cond_8

    .line 46
    .line 47
    instance-of v1, v3, Lio/ktor/utils/io/internal/g$b;

    .line 48
    .line 49
    if-eqz v1, :cond_8

    .line 50
    .line 51
    iget-object v1, v3, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->k()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    if-eqz v1, :cond_8

    .line 64
    .line 65
    .line 66
    :cond_6
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    iget-object v1, v3, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->f()V

    .line 75
    .line 76
    :cond_7
    check-cast v3, Lio/ktor/utils/io/internal/g$b;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/g$b;->g()Lio/ktor/utils/io/internal/g$c;

    .line 80
    move-result-object v1

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_8
    if-eqz p1, :cond_a

    .line 84
    .line 85
    instance-of v1, v3, Lio/ktor/utils/io/internal/g$b;

    .line 86
    .line 87
    if-eqz v1, :cond_a

    .line 88
    .line 89
    iget-object v1, v3, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->k()Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-eqz v1, :cond_a

    .line 96
    .line 97
    check-cast v3, Lio/ktor/utils/io/internal/g$b;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/g$b;->g()Lio/ktor/utils/io/internal/g$c;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    :goto_1
    sget-object v3, Lio/ktor/utils/io/a;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 104
    .line 105
    .line 106
    invoke-static {v3, p0, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    .line 109
    if-eqz v2, :cond_0

    .line 110
    .line 111
    if-eqz v1, :cond_9

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    if-ne p1, v5, :cond_9

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v1}, Lio/ktor/utils/io/a;->k0(Lio/ktor/utils/io/internal/g$c;)V

    .line 121
    :cond_9
    return v6

    .line 122
    :cond_a
    const/4 p1, 0x0

    .line 123
    return p1
.end method

.method public static final synthetic C(Lio/ktor/utils/io/a;Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->N0(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->O0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->P0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final E0(Ljava/nio/ByteBuffer;)I
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->x0()Ljava/nio/ByteBuffer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    iget-object v3, v3, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 29
    move-result-wide v4

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    if-nez v6, :cond_8

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 39
    move-result v6

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 43
    move-result v7

    .line 44
    .line 45
    sub-int v7, v6, v7

    .line 46
    .line 47
    if-eqz v7, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 51
    move-result v8

    .line 52
    .line 53
    .line 54
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 55
    move-result v7

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v7}, Lio/ktor/utils/io/internal/i;->n(I)I

    .line 59
    move-result v7

    .line 60
    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    if-lez v7, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 67
    move-result v8

    .line 68
    add-int/2addr v8, v7

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 75
    add-int/2addr v2, v7

    .line 76
    .line 77
    iget v7, v0, Lio/ktor/utils/io/a;->writePosition:I

    .line 78
    add-int/2addr v7, v2

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1, v7}, Lio/ktor/utils/io/a;->I(Ljava/nio/ByteBuffer;I)I

    .line 82
    move-result v7

    .line 83
    .line 84
    iget v8, v3, Lio/ktor/utils/io/internal/i;->_availableForWrite$internal:I

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1, v7, v8}, Lio/ktor/utils/io/a;->V(Ljava/nio/ByteBuffer;II)V

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_3
    const-string p1, "Failed requirement."

    .line 93
    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    throw v1

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v1, v3, v2}, Lio/ktor/utils/io/a;->H(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/i;->h()Z

    .line 112
    move-result p1

    .line 113
    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->h()Z

    .line 118
    move-result p1

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 124
    .line 125
    :cond_6
    if-eq v0, p0, :cond_7

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->R()J

    .line 129
    move-result-wide v6

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 133
    move-result-wide v8

    .line 134
    sub-long/2addr v8, v4

    .line 135
    add-long/2addr v6, v8

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v6, v7}, Lio/ktor/utils/io/a;->v0(J)V

    .line 139
    .line 140
    .line 141
    :cond_7
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->p0()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->C0()Z

    .line 145
    return v2

    .line 146
    .line 147
    .line 148
    :cond_8
    :try_start_1
    invoke-virtual {v6}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 153
    .line 154
    new-instance p1, Lw7/i;

    .line 155
    .line 156
    .line 157
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 158
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/i;->h()Z

    .line 162
    move-result v1

    .line 163
    .line 164
    if-nez v1, :cond_9

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->h()Z

    .line 168
    move-result v1

    .line 169
    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    .line 173
    :cond_9
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 174
    .line 175
    :cond_a
    if-eq v0, p0, :cond_b

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->R()J

    .line 179
    move-result-wide v1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 183
    move-result-wide v6

    .line 184
    sub-long/2addr v6, v4

    .line 185
    add-long/2addr v1, v6

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/a;->v0(J)V

    .line 189
    .line 190
    .line 191
    :cond_b
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->p0()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->C0()Z

    .line 195
    throw p1
.end method

.method public static final synthetic F(Lio/ktor/utils/io/a;I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/utils/io/a;->Q0(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final F0(Lr7/a;)I
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->x0()Ljava/nio/ByteBuffer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    iget-object v3, v3, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 29
    move-result-wide v4

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    if-nez v6, :cond_7

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 39
    move-result v6

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 43
    move-result v7

    .line 44
    sub-int/2addr v6, v7

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 48
    move-result v7

    .line 49
    .line 50
    .line 51
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 52
    move-result v6

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v6}, Lio/ktor/utils/io/internal/i;->n(I)I

    .line 56
    move-result v6

    .line 57
    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1, v6}, Lr7/g;->a(Lr7/a;Ljava/nio/ByteBuffer;I)V

    .line 62
    add-int/2addr v2, v6

    .line 63
    .line 64
    iget v6, v0, Lio/ktor/utils/io/a;->writePosition:I

    .line 65
    add-int/2addr v6, v2

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v6}, Lio/ktor/utils/io/a;->I(Ljava/nio/ByteBuffer;I)I

    .line 69
    move-result v6

    .line 70
    .line 71
    iget v7, v3, Lio/ktor/utils/io/internal/i;->_availableForWrite$internal:I

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1, v6, v7}, Lio/ktor/utils/io/a;->V(Ljava/nio/ByteBuffer;II)V

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-direct {v0, v1, v3, v2}, Lio/ktor/utils/io/a;->H(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/i;->h()Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->h()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 96
    .line 97
    :cond_5
    if-eq v0, p0, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->R()J

    .line 101
    move-result-wide v6

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 105
    move-result-wide v8

    .line 106
    sub-long/2addr v8, v4

    .line 107
    add-long/2addr v6, v8

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v6, v7}, Lio/ktor/utils/io/a;->v0(J)V

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->p0()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->C0()Z

    .line 117
    return v2

    .line 118
    .line 119
    .line 120
    :cond_7
    :try_start_1
    invoke-virtual {v6}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 125
    .line 126
    new-instance p1, Lw7/i;

    .line 127
    .line 128
    .line 129
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 130
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/i;->h()Z

    .line 134
    move-result v1

    .line 135
    .line 136
    if-nez v1, :cond_8

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->h()Z

    .line 140
    move-result v1

    .line 141
    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    .line 145
    :cond_8
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 146
    .line 147
    :cond_9
    if-eq v0, p0, :cond_a

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->R()J

    .line 151
    move-result-wide v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 155
    move-result-wide v6

    .line 156
    sub-long/2addr v6, v4

    .line 157
    add-long/2addr v1, v6

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/a;->v0(J)V

    .line 161
    .line 162
    .line 163
    :cond_a
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->p0()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->C0()Z

    .line 167
    throw p1
.end method

.method private final G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V
    .locals 2

    .line 1
    .line 2
    if-ltz p3, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lio/ktor/utils/io/a;->readPosition:I

    .line 5
    add-int/2addr v0, p3

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/a;->I(Ljava/nio/ByteBuffer;I)I

    .line 9
    move-result p1

    .line 10
    .line 11
    iput p1, p0, Lio/ktor/utils/io/a;->readPosition:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/internal/i;->a(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->Q()J

    .line 18
    move-result-wide p1

    .line 19
    int-to-long v0, p3

    .line 20
    add-long/2addr p1, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/a;->u0(J)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lio/ktor/utils/io/a;->s0()V

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p2, "Failed requirement."

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1
.end method

.method private final G0([BII)I
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->x0()Ljava/nio/ByteBuffer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    iget-object v3, v3, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 29
    move-result-wide v4

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    if-nez v6, :cond_8

    .line 36
    .line 37
    :goto_0
    sub-int v6, p3, v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 41
    move-result v7

    .line 42
    .line 43
    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 45
    move-result v6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v6}, Lio/ktor/utils/io/internal/i;->n(I)I

    .line 49
    move-result v6

    .line 50
    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    if-lez v6, :cond_3

    .line 54
    .line 55
    add-int v7, p2, v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 59
    add-int/2addr v2, v6

    .line 60
    .line 61
    iget v6, v0, Lio/ktor/utils/io/a;->writePosition:I

    .line 62
    add-int/2addr v6, v2

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1, v6}, Lio/ktor/utils/io/a;->I(Ljava/nio/ByteBuffer;I)I

    .line 66
    move-result v6

    .line 67
    .line 68
    iget v7, v3, Lio/ktor/utils/io/internal/i;->_availableForWrite$internal:I

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1, v6, v7}, Lio/ktor/utils/io/a;->V(Ljava/nio/ByteBuffer;II)V

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_3
    const-string p1, "Failed requirement."

    .line 77
    .line 78
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p2

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-direct {v0, v1, v3, v2}, Lio/ktor/utils/io/a;->H(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/i;->h()Z

    .line 93
    move-result p1

    .line 94
    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->h()Z

    .line 99
    move-result p1

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 105
    .line 106
    :cond_6
    if-eq v0, p0, :cond_7

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->R()J

    .line 110
    move-result-wide p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 114
    move-result-wide v6

    .line 115
    sub-long/2addr v6, v4

    .line 116
    add-long/2addr p1, v6

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/a;->v0(J)V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->p0()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->C0()Z

    .line 126
    return v2

    .line 127
    .line 128
    .line 129
    :cond_8
    :try_start_1
    invoke-virtual {v6}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 134
    .line 135
    new-instance p1, Lw7/i;

    .line 136
    .line 137
    .line 138
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 139
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/i;->h()Z

    .line 143
    move-result p2

    .line 144
    .line 145
    if-nez p2, :cond_9

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->h()Z

    .line 149
    move-result p2

    .line 150
    .line 151
    if-eqz p2, :cond_a

    .line 152
    .line 153
    .line 154
    :cond_9
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 155
    .line 156
    :cond_a
    if-eq v0, p0, :cond_b

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->R()J

    .line 160
    move-result-wide p2

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->R()J

    .line 164
    move-result-wide v1

    .line 165
    sub-long/2addr v1, v4

    .line 166
    add-long/2addr p2, v1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p2, p3}, Lio/ktor/utils/io/a;->v0(J)V

    .line 170
    .line 171
    .line 172
    :cond_b
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->p0()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->C0()Z

    .line 176
    throw p1
.end method

.method private final H(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V
    .locals 2

    .line 1
    .line 2
    if-ltz p3, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lio/ktor/utils/io/a;->writePosition:I

    .line 5
    add-int/2addr v0, p3

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/a;->I(Ljava/nio/ByteBuffer;I)I

    .line 9
    move-result p1

    .line 10
    .line 11
    iput p1, p0, Lio/ktor/utils/io/a;->writePosition:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/internal/i;->c(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->R()J

    .line 18
    move-result-wide p1

    .line 19
    int-to-long v0, p3

    .line 20
    add-long/2addr p1, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/a;->v0(J)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p2, "Failed requirement."

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method private final I(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lio/ktor/utils/io/a;->reservedSize:I

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    if-lt p2, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 13
    move-result p1

    .line 14
    .line 15
    iget v0, p0, Lio/ktor/utils/io/a;->reservedSize:I

    .line 16
    sub-int/2addr p1, v0

    .line 17
    sub-int/2addr p2, p1

    .line 18
    :cond_0
    return p2
.end method

.method static synthetic I0(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "[BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->H0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->G0([BII)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->P0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method static synthetic J0(Lio/ktor/utils/io/a;Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lio/ktor/utils/io/a;->d(Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    return-object p0

    .line 22
    .line 23
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 24
    return-object p0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/a;->E0(Ljava/nio/ByteBuffer;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 36
    return-object p0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->M0(Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-ne p0, p1, :cond_3

    .line 47
    return-object p0

    .line 48
    .line 49
    :cond_3
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 50
    return-object p0
.end method

.method static synthetic K0(Lio/ktor/utils/io/a;Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "Lr7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/utils/io/a;->F0(Lr7/a;)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-le v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->N0(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    return-object p0

    .line 25
    .line 26
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 27
    return-object p0

    .line 28
    .line 29
    :cond_1
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 30
    return-object p0
.end method

.method private final L(Lio/ktor/utils/io/internal/d;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    .line 10
    iput-object v1, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/d;->b()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/d;->c()Lio/ktor/utils/io/a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/d;->a()V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/d;->c()Lio/ktor/utils/io/a;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    instance-of v2, v1, Lio/ktor/utils/io/internal/g$g;

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    instance-of v1, v1, Lio/ktor/utils/io/internal/g$e;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    goto :goto_2

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/d;->c()Lio/ktor/utils/io/a;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 64
    goto :goto_3

    .line 65
    .line 66
    .line 67
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/d;->c()Lio/ktor/utils/io/a;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/a;->c(Ljava/lang/Throwable;)Z

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/d;->a()V

    .line 79
    return-void
.end method

.method static synthetic L0(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "[BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->m([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    return-object p0

    .line 22
    .line 23
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 24
    return-object p0

    .line 25
    .line 26
    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->G0([BII)I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    add-int/2addr p2, v0

    .line 34
    sub-int/2addr p3, v0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    if-nez p3, :cond_3

    .line 38
    .line 39
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 40
    return-object p0

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->O0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    if-ne p0, p1, :cond_4

    .line 51
    return-object p0

    .line 52
    .line 53
    :cond_4
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 54
    return-object p0
.end method

.method private final M(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/d;->c()Lio/ktor/utils/io/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->flush()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget-object v1, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    iget-object v2, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    if-ne v0, v2, :cond_0

    .line 34
    .line 35
    iget-object v2, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 36
    .line 37
    iget v2, v2, Lio/ktor/utils/io/internal/i;->_availableForWrite$internal:I

    .line 38
    .line 39
    iget-object v0, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 40
    .line 41
    iget v0, v0, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 42
    const/4 v3, 0x1

    .line 43
    .line 44
    if-lt v0, v3, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lio/ktor/utils/io/a;->r0()V

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 50
    .line 51
    if-lt v2, p1, :cond_4

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    if-ne p1, v1, :cond_4

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->s0()V

    .line 63
    :cond_4
    return-void
.end method

.method private final M0(Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/a$j;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$j;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$j;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$j;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$j;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/a$j;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/a$j;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$j;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/a$j;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    iget-object v2, v0, Lio/ktor/utils/io/a$j;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Lio/ktor/utils/io/a;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    move-object v2, p0

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 72
    move-result p2

    .line 73
    .line 74
    if-eqz p2, :cond_7

    .line 75
    .line 76
    iput-object v2, v0, Lio/ktor/utils/io/a$j;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object p1, v0, Lio/ktor/utils/io/a$j;->L$1:Ljava/lang/Object;

    .line 79
    .line 80
    iput v4, v0, Lio/ktor/utils/io/a$j;->label:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4, v0}, Lio/ktor/utils/io/a;->D0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    if-ne p2, v1, :cond_4

    .line 87
    return-object v1

    .line 88
    .line 89
    :cond_4
    :goto_2
    iget-object p2, v2, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 90
    .line 91
    if-eqz p2, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v2, p2}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    const/4 v2, 0x0

    .line 99
    .line 100
    iput-object v2, v0, Lio/ktor/utils/io/a$j;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object v2, v0, Lio/ktor/utils/io/a$j;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    iput v3, v0, Lio/ktor/utils/io/a$j;->label:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1, v0}, Lio/ktor/utils/io/a;->d(Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    if-ne p1, v1, :cond_5

    .line 111
    return-object v1

    .line 112
    .line 113
    :cond_5
    :goto_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 114
    return-object p1

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-direct {v2, p1}, Lio/ktor/utils/io/a;->E0(Ljava/nio/ByteBuffer;)I

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 121
    return-object p1
.end method

.method private final N()Lio/ktor/utils/io/internal/c;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->_closed:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lio/ktor/utils/io/internal/c;

    .line 5
    return-object v0
.end method

.method private final N0(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/a$k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$k;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$k;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$k;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$k;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/a$k;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/a$k;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$k;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/a$k;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lr7/a;

    .line 57
    .line 58
    iget-object v2, v0, Lio/ktor/utils/io/a$k;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Lio/ktor/utils/io/a;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    move-object v2, p0

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 72
    move-result p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 76
    move-result v5

    .line 77
    .line 78
    if-le p2, v5, :cond_7

    .line 79
    .line 80
    iput-object v2, v0, Lio/ktor/utils/io/a$k;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    iput-object p1, v0, Lio/ktor/utils/io/a$k;->L$1:Ljava/lang/Object;

    .line 83
    .line 84
    iput v4, v0, Lio/ktor/utils/io/a$k;->label:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4, v0}, Lio/ktor/utils/io/a;->D0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    if-ne p2, v1, :cond_4

    .line 91
    return-object v1

    .line 92
    .line 93
    :cond_4
    :goto_2
    iget-object p2, v2, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 94
    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, v2, p2}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    if-eqz p2, :cond_6

    .line 102
    const/4 v2, 0x0

    .line 103
    .line 104
    iput-object v2, v0, Lio/ktor/utils/io/a$k;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v2, v0, Lio/ktor/utils/io/a$k;->L$1:Ljava/lang/Object;

    .line 107
    .line 108
    iput v3, v0, Lio/ktor/utils/io/a$k;->label:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1, v0}, Lio/ktor/utils/io/a;->n(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    if-ne p1, v1, :cond_5

    .line 115
    return-object v1

    .line 116
    .line 117
    :cond_5
    :goto_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 118
    return-object p1

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-direct {v2, p1}, Lio/ktor/utils/io/a;->F0(Lr7/a;)I

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 125
    return-object p1
.end method

.method private final O()Lkotlin/coroutines/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->_readOp:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lkotlin/coroutines/d;

    .line 5
    return-object v0
.end method

.method private final O0([BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Lio/ktor/utils/io/a$l;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$l;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$l;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$l;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$l;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/a$l;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/a$l;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$l;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p1, v0, Lio/ktor/utils/io/a$l;->I$1:I

    .line 40
    .line 41
    iget p2, v0, Lio/ktor/utils/io/a$l;->I$0:I

    .line 42
    .line 43
    iget-object p3, v0, Lio/ktor/utils/io/a$l;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p3, [B

    .line 46
    .line 47
    iget-object v2, v0, Lio/ktor/utils/io/a$l;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lio/ktor/utils/io/a;

    .line 50
    .line 51
    .line 52
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 65
    move-object v2, p0

    .line 66
    .line 67
    :goto_1
    if-lez p3, :cond_4

    .line 68
    .line 69
    iput-object v2, v0, Lio/ktor/utils/io/a$l;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object p1, v0, Lio/ktor/utils/io/a$l;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    iput p2, v0, Lio/ktor/utils/io/a$l;->I$0:I

    .line 74
    .line 75
    iput p3, v0, Lio/ktor/utils/io/a$l;->I$1:I

    .line 76
    .line 77
    iput v3, v0, Lio/ktor/utils/io/a$l;->label:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1, p2, p3, v0}, Lio/ktor/utils/io/a;->H0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 81
    move-result-object p4

    .line 82
    .line 83
    if-ne p4, v1, :cond_3

    .line 84
    return-object v1

    .line 85
    :cond_3
    move v4, p3

    .line 86
    move-object p3, p1

    .line 87
    move p1, v4

    .line 88
    .line 89
    :goto_2
    check-cast p4, Ljava/lang/Number;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 93
    move-result p4

    .line 94
    add-int/2addr p2, p4

    .line 95
    sub-int/2addr p1, p4

    .line 96
    move-object v4, p3

    .line 97
    move p3, p1

    .line 98
    move-object p1, v4

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_4
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 102
    return-object p1
.end method

.method private final P()Lio/ktor/utils/io/internal/g;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->_state:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lio/ktor/utils/io/internal/g;

    .line 5
    return-object v0
.end method

.method private final P0([BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Lio/ktor/utils/io/a$m;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$m;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$m;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$m;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$m;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/a$m;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/a$m;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$m;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget p1, v0, Lio/ktor/utils/io/a$m;->I$1:I

    .line 55
    .line 56
    iget p2, v0, Lio/ktor/utils/io/a$m;->I$0:I

    .line 57
    .line 58
    iget-object p3, v0, Lio/ktor/utils/io/a$m;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p3, [B

    .line 61
    .line 62
    iget-object v2, v0, Lio/ktor/utils/io/a$m;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lio/ktor/utils/io/a;

    .line 65
    .line 66
    .line 67
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    move-object v5, p3

    .line 69
    move p3, p1

    .line 70
    move-object p1, v5

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 75
    move-object v2, p0

    .line 76
    .line 77
    :cond_4
    iput-object v2, v0, Lio/ktor/utils/io/a$m;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object p1, v0, Lio/ktor/utils/io/a$m;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    iput p2, v0, Lio/ktor/utils/io/a$m;->I$0:I

    .line 82
    .line 83
    iput p3, v0, Lio/ktor/utils/io/a$m;->I$1:I

    .line 84
    .line 85
    iput v4, v0, Lio/ktor/utils/io/a$m;->label:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v4, v0}, Lio/ktor/utils/io/a;->D0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 89
    move-result-object p4

    .line 90
    .line 91
    if-ne p4, v1, :cond_5

    .line 92
    return-object v1

    .line 93
    .line 94
    :cond_5
    :goto_1
    iget-object p4, v2, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 95
    .line 96
    if-eqz p4, :cond_7

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v2, p4}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 100
    move-result-object p4

    .line 101
    .line 102
    if-eqz p4, :cond_7

    .line 103
    const/4 v2, 0x0

    .line 104
    .line 105
    iput-object v2, v0, Lio/ktor/utils/io/a$m;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object v2, v0, Lio/ktor/utils/io/a$m;->L$1:Ljava/lang/Object;

    .line 108
    .line 109
    iput v3, v0, Lio/ktor/utils/io/a$m;->label:I

    .line 110
    .line 111
    .line 112
    invoke-direct {p4, p1, p2, p3, v0}, Lio/ktor/utils/io/a;->P0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 113
    move-result-object p4

    .line 114
    .line 115
    if-ne p4, v1, :cond_6

    .line 116
    return-object v1

    .line 117
    :cond_6
    :goto_2
    return-object p4

    .line 118
    .line 119
    .line 120
    :cond_7
    invoke-direct {v2, p1, p2, p3}, Lio/ktor/utils/io/a;->G0([BII)I

    .line 121
    move-result p4

    .line 122
    .line 123
    if-lez p4, :cond_4

    .line 124
    .line 125
    .line 126
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 127
    move-result-object p1

    .line 128
    return-object p1
.end method

.method private final Q0(I)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 20
    .line 21
    iget v0, v0, Lio/ktor/utils/io/internal/i;->_availableForWrite$internal:I

    .line 22
    .line 23
    if-ge v0, p1, :cond_2

    .line 24
    .line 25
    sget-object p1, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 26
    .line 27
    if-eq v1, p1, :cond_2

    .line 28
    :goto_0
    move v3, v2

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    sget-object p1, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 32
    .line 33
    if-eq v1, p1, :cond_2

    .line 34
    .line 35
    instance-of p1, v1, Lio/ktor/utils/io/internal/g$g;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    instance-of p1, v1, Lio/ktor/utils/io/internal/g$e;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    return v3
.end method

.method private final S()Lkotlin/coroutines/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->_writeOp:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lkotlin/coroutines/d;

    .line 5
    return-object v0
.end method

.method private final U()Lio/ktor/utils/io/internal/g$c;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->pool:Lt7/g;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lt7/g;->s0()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lio/ktor/utils/io/internal/g$c;

    .line 9
    .line 10
    iget-object v1, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->j()V

    .line 14
    return-object v0
.end method

.method private final V(Ljava/nio/ByteBuffer;II)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "Failed requirement."

    .line 3
    .line 4
    if-ltz p2, :cond_1

    .line 5
    .line 6
    if-ltz p3, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lio/ktor/utils/io/a;->reservedSize:I

    .line 13
    sub-int/2addr v0, v1

    .line 14
    add-int/2addr p3, p2

    .line 15
    .line 16
    .line 17
    invoke-static {p3, v0}, Lj8/m;->j(II)I

    .line 18
    move-result p3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 36
    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
.end method

.method static synthetic W(Lio/ktor/utils/io/a;ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "I",
            "Le8/l<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_b

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lio/ktor/utils/io/a;->w0()Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iget-object v1, v1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 16
    .line 17
    :try_start_0
    iget v2, v1, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lio/ktor/utils/io/a;->o0()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_1
    :try_start_1
    iget v2, v1, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 29
    .line 30
    if-lez v2, :cond_6

    .line 31
    .line 32
    if-ge v2, p1, :cond_2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 41
    move-result v3

    .line 42
    .line 43
    .line 44
    invoke-interface {p2, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 48
    move-result v4

    .line 49
    .line 50
    if-ne v3, v4, :cond_5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 54
    move-result v3

    .line 55
    sub-int/2addr v3, v2

    .line 56
    .line 57
    if-ltz v3, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/internal/i;->m(I)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0, v1, v3}, Lio/ktor/utils/io/a;->G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V

    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_4

    .line 71
    .line 72
    :cond_3
    const-string p1, "Check failed."

    .line 73
    .line 74
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p2

    .line 83
    .line 84
    :cond_4
    const-string p1, "Position has been moved backward: pushback is not supported."

    .line 85
    .line 86
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p2

    .line 95
    .line 96
    :cond_5
    const-string p1, "Buffer limit modified."

    .line 97
    .line 98
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-direct {p0}, Lio/ktor/utils/io/a;->o0()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 114
    .line 115
    if-nez v0, :cond_a

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->o()Z

    .line 119
    move-result v0

    .line 120
    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    if-gtz p1, :cond_7

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_7
    new-instance p0, Ljava/io/EOFException;

    .line 127
    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string p3, "Got EOF but at least "

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string p1, " bytes were expected"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 152
    throw p0

    .line 153
    .line 154
    .line 155
    :cond_8
    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->e0(ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 156
    move-result-object p0

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    if-ne p0, p1, :cond_9

    .line 163
    return-object p0

    .line 164
    .line 165
    :cond_9
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 166
    return-object p0

    .line 167
    .line 168
    :cond_a
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 169
    return-object p0

    .line 170
    .line 171
    .line 172
    :goto_4
    invoke-direct {p0}, Lio/ktor/utils/io/a;->o0()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 176
    throw p1

    .line 177
    .line 178
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    const-string p1, "min should be positive or zero"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p0
.end method

.method private final X(Lr7/a;II)I
    .locals 6

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->w0()Ljava/nio/ByteBuffer;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    :goto_0
    move v4, v1

    .line 9
    goto :goto_3

    .line 10
    .line 11
    .line 12
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    iget-object v2, v2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 16
    .line 17
    :try_start_0
    iget v3, v2, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lio/ktor/utils/io/a;->o0()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 30
    move-result v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 34
    move-result v4

    .line 35
    sub-int/2addr v3, v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 39
    move-result v4

    .line 40
    .line 41
    .line 42
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result v5

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 47
    move-result v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4}, Lio/ktor/utils/io/internal/i;->l(I)I

    .line 51
    move-result v4

    .line 52
    .line 53
    if-gtz v4, :cond_3

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 58
    move-result v1

    .line 59
    .line 60
    if-ge v3, v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 64
    move-result v1

    .line 65
    add-int/2addr v1, v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_4

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_1
    invoke-static {p1, v0}, Lr7/e;->a(Lr7/a;Ljava/nio/ByteBuffer;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v0, v2, v4}, Lio/ktor/utils/io/a;->G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const/4 v1, 0x1

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-direct {p0}, Lio/ktor/utils/io/a;->o0()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 85
    :goto_3
    add-int/2addr p2, v4

    .line 86
    sub-int/2addr p3, v4

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 92
    move-result v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 96
    move-result v1

    .line 97
    .line 98
    if-le v0, v1, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    iget-object v0, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 105
    .line 106
    iget v0, v0, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 107
    .line 108
    if-gtz v0, :cond_0

    .line 109
    :cond_5
    return p2

    .line 110
    .line 111
    .line 112
    :goto_4
    invoke-direct {p0}, Lio/ktor/utils/io/a;->o0()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 116
    throw p1
.end method

.method private final Y([BII)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->w0()Ljava/nio/ByteBuffer;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_2

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    iget-object v2, v2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 15
    .line 16
    :try_start_0
    iget v3, v2, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 23
    move-result v3

    .line 24
    .line 25
    iget v4, p0, Lio/ktor/utils/io/a;->reservedSize:I

    .line 26
    sub-int/2addr v3, v4

    .line 27
    .line 28
    :goto_0
    sub-int v4, p3, v1

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget v5, p0, Lio/ktor/utils/io/a;->readPosition:I

    .line 33
    .line 34
    sub-int v6, v3, v5

    .line 35
    .line 36
    .line 37
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Lio/ktor/utils/io/internal/i;->l(I)I

    .line 42
    move-result v4

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    add-int v6, v5, v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    .line 54
    add-int v5, p2, v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0, v2, v4}, Lio/ktor/utils/io/a;->G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    add-int/2addr v1, v4

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/ktor/utils/io/a;->o0()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 71
    :goto_2
    return v1

    .line 72
    .line 73
    .line 74
    :goto_3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->o0()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 78
    throw p1
.end method

.method static synthetic Z(Lio/ktor/utils/io/a;Lr7/a;IIILjava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    if-nez p5, :cond_2

    .line 3
    .line 4
    and-int/lit8 p5, p4, 0x2

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 15
    move-result p3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 19
    move-result p4

    .line 20
    sub-int/2addr p3, p4

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->X(Lr7/a;II)I

    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    .line 27
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 28
    .line 29
    const-string p1, "Super calls with default arguments not supported in this target, function: readAsMuchAsPossible"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method static synthetic a0(Lio/ktor/utils/io/a;Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "Ls7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/a;->Z(Lio/ktor/utils/io/a;Lr7/a;IIILjava/lang/Object;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iget-object p2, p2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x6

    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v0, p0

    .line 36
    move-object v1, p1

    .line 37
    .line 38
    .line 39
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/a;->Z(Lio/ktor/utils/io/a;Lr7/a;IIILjava/lang/Object;)I

    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, -0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    if-gtz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 49
    move-result v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 53
    move-result v2

    .line 54
    .line 55
    if-le v1, v2, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->c0(Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public static final synthetic b(Lio/ktor/utils/io/a;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/utils/io/a;->M(I)V

    .line 4
    return-void
.end method

.method static synthetic b0(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "[BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->Y([BII)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 16
    move-result-object p4

    .line 17
    .line 18
    iget-object p4, p4, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 22
    move-result p4

    .line 23
    .line 24
    if-eqz p4, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->Y([BII)I

    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, -0x1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    if-gtz v0, :cond_3

    .line 34
    .line 35
    if-nez p3, :cond_2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->d0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private final c0(Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/a$e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$e;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$e;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$e;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$e;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/a$e;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/a$e;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$e;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/a$e;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Ls7/a;

    .line 57
    .line 58
    iget-object v2, v0, Lio/ktor/utils/io/a$e;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Lio/ktor/utils/io/a;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    iput-object p0, v0, Lio/ktor/utils/io/a$e;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object p1, v0, Lio/ktor/utils/io/a$e;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    iput v4, v0, Lio/ktor/utils/io/a$e;->label:I

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v4, v0}, Lio/ktor/utils/io/a;->h0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    if-ne p2, v1, :cond_4

    .line 80
    return-object v1

    .line 81
    :cond_4
    move-object v2, p0

    .line 82
    .line 83
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    move-result p2

    .line 88
    .line 89
    if-nez p2, :cond_5

    .line 90
    const/4 p1, -0x1

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_5
    const/4 p2, 0x0

    .line 97
    .line 98
    iput-object p2, v0, Lio/ktor/utils/io/a$e;->L$0:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object p2, v0, Lio/ktor/utils/io/a$e;->L$1:Ljava/lang/Object;

    .line 101
    .line 102
    iput v3, v0, Lio/ktor/utils/io/a$e;->label:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p1, v0}, Lio/ktor/utils/io/a;->g(Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    if-ne p2, v1, :cond_6

    .line 109
    return-object v1

    .line 110
    :cond_6
    :goto_2
    return-object p2
.end method

.method private final d0([BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Lio/ktor/utils/io/a$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$d;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$d;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$d;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$d;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/a$d;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/a$d;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$d;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget p3, v0, Lio/ktor/utils/io/a$d;->I$1:I

    .line 55
    .line 56
    iget p2, v0, Lio/ktor/utils/io/a$d;->I$0:I

    .line 57
    .line 58
    iget-object p1, v0, Lio/ktor/utils/io/a$d;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, [B

    .line 61
    .line 62
    iget-object v2, v0, Lio/ktor/utils/io/a$d;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lio/ktor/utils/io/a;

    .line 65
    .line 66
    .line 67
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    iput-object p0, v0, Lio/ktor/utils/io/a$d;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p1, v0, Lio/ktor/utils/io/a$d;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    iput p2, v0, Lio/ktor/utils/io/a$d;->I$0:I

    .line 78
    .line 79
    iput p3, v0, Lio/ktor/utils/io/a$d;->I$1:I

    .line 80
    .line 81
    iput v4, v0, Lio/ktor/utils/io/a$d;->label:I

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v4, v0}, Lio/ktor/utils/io/a;->h0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 85
    move-result-object p4

    .line 86
    .line 87
    if-ne p4, v1, :cond_4

    .line 88
    return-object v1

    .line 89
    :cond_4
    move-object v2, p0

    .line 90
    .line 91
    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    move-result p4

    .line 96
    .line 97
    if-nez p4, :cond_5

    .line 98
    const/4 p1, -0x1

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_5
    const/4 p4, 0x0

    .line 105
    .line 106
    iput-object p4, v0, Lio/ktor/utils/io/a$d;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object p4, v0, Lio/ktor/utils/io/a$d;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    iput v3, v0, Lio/ktor/utils/io/a$d;->label:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p1, p2, p3, v0}, Lio/ktor/utils/io/a;->k([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 114
    move-result-object p4

    .line 115
    .line 116
    if-ne p4, v1, :cond_6

    .line 117
    return-object v1

    .line 118
    :cond_6
    :goto_2
    return-object p4
.end method

.method private final e0(ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le8/l<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lio/ktor/utils/io/a$f;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$f;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$f;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$f;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$f;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/a$f;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/a$f;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$f;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget p1, v0, Lio/ktor/utils/io/a$f;->I$0:I

    .line 55
    .line 56
    iget-object p2, v0, Lio/ktor/utils/io/a$f;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p2, Le8/l;

    .line 59
    .line 60
    iget-object v2, v0, Lio/ktor/utils/io/a$f;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lio/ktor/utils/io/a;

    .line 63
    .line 64
    .line 65
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v4}, Lj8/m;->e(II)I

    .line 73
    move-result p3

    .line 74
    .line 75
    iput-object p0, v0, Lio/ktor/utils/io/a$f;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p2, v0, Lio/ktor/utils/io/a$f;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    iput p1, v0, Lio/ktor/utils/io/a$f;->I$0:I

    .line 80
    .line 81
    iput v4, v0, Lio/ktor/utils/io/a$f;->label:I

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p3, v0}, Lio/ktor/utils/io/a;->h0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    if-ne p3, v1, :cond_4

    .line 88
    return-object v1

    .line 89
    :cond_4
    move-object v2, p0

    .line 90
    .line 91
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    move-result p3

    .line 96
    .line 97
    if-nez p3, :cond_6

    .line 98
    .line 99
    if-gtz p1, :cond_5

    .line 100
    .line 101
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 102
    return-object p1

    .line 103
    .line 104
    :cond_5
    new-instance p2, Ljava/io/EOFException;

    .line 105
    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    const-string v0, "Got EOF but at least "

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string p1, " bytes were expected"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-direct {p2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p2

    .line 131
    :cond_6
    const/4 p3, 0x0

    .line 132
    .line 133
    iput-object p3, v0, Lio/ktor/utils/io/a$f;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object p3, v0, Lio/ktor/utils/io/a$f;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    iput v3, v0, Lio/ktor/utils/io/a$f;->label:I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1, p2, v0}, Lio/ktor/utils/io/a;->l(ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    if-ne p1, v1, :cond_7

    .line 144
    return-object v1

    .line 145
    .line 146
    :cond_7
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 147
    return-object p1
.end method

.method static synthetic f0(Lio/ktor/utils/io/a;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lr7/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->T()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->j()Ljava/lang/Throwable;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->l0(J)Lr7/j;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p3}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 21
    .line 22
    new-instance p0, Lw7/i;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 26
    throw p0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->g0(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private final g0(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lr7/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lio/ktor/utils/io/a$g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$g;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$g;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$g;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$g;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/a$g;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/a$g;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$g;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lio/ktor/utils/io/a$g;->L$4:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ls7/a;

    .line 42
    .line 43
    iget-object p2, v0, Lio/ktor/utils/io/a$g;->L$3:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Lr7/p;

    .line 46
    .line 47
    iget-object v2, v0, Lio/ktor/utils/io/a$g;->L$2:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lkotlin/jvm/internal/o0;

    .line 50
    .line 51
    iget-object v4, v0, Lio/ktor/utils/io/a$g;->L$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, Lr7/i;

    .line 54
    .line 55
    iget-object v5, v0, Lio/ktor/utils/io/a$g;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v5, Lio/ktor/utils/io/a;

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    new-instance p3, Lr7/i;

    .line 79
    const/4 v2, 0x0

    .line 80
    .line 81
    .line 82
    invoke-direct {p3, v2, v3, v2}, Lr7/i;-><init>(Lt7/g;ILkotlin/jvm/internal/k;)V

    .line 83
    .line 84
    :try_start_1
    new-instance v4, Lkotlin/jvm/internal/o0;

    .line 85
    .line 86
    .line 87
    invoke-direct {v4}, Lkotlin/jvm/internal/o0;-><init>()V

    .line 88
    .line 89
    iput-wide p1, v4, Lkotlin/jvm/internal/o0;->element:J

    .line 90
    .line 91
    .line 92
    invoke-static {p3, v3, v2}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 93
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    move-object p2, p3

    .line 95
    move-object v2, v4

    .line 96
    move-object p3, p0

    .line 97
    move-object v4, p2

    .line 98
    .line 99
    .line 100
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 101
    move-result v5

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 105
    move-result v6

    .line 106
    sub-int/2addr v5, v6

    .line 107
    int-to-long v5, v5

    .line 108
    .line 109
    iget-wide v7, v2, Lkotlin/jvm/internal/o0;->element:J

    .line 110
    .line 111
    cmp-long v5, v5, v7

    .line 112
    .line 113
    if-lez v5, :cond_3

    .line 114
    long-to-int v5, v7

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v5}, Lr7/a;->s(I)V

    .line 118
    :cond_3
    const/4 v7, 0x0

    .line 119
    const/4 v8, 0x0

    .line 120
    const/4 v9, 0x6

    .line 121
    const/4 v10, 0x0

    .line 122
    move-object v5, p3

    .line 123
    move-object v6, p1

    .line 124
    .line 125
    .line 126
    invoke-static/range {v5 .. v10}, Lio/ktor/utils/io/a;->Z(Lio/ktor/utils/io/a;Lr7/a;IIILjava/lang/Object;)I

    .line 127
    move-result v5

    .line 128
    .line 129
    iget-wide v6, v2, Lkotlin/jvm/internal/o0;->element:J

    .line 130
    int-to-long v8, v5

    .line 131
    sub-long/2addr v6, v8

    .line 132
    .line 133
    iput-wide v6, v2, Lkotlin/jvm/internal/o0;->element:J

    .line 134
    .line 135
    const-wide/16 v8, 0x0

    .line 136
    .line 137
    cmp-long v5, v6, v8

    .line 138
    .line 139
    if-lez v5, :cond_6

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Lio/ktor/utils/io/a;->o()Z

    .line 143
    move-result v5

    .line 144
    .line 145
    if-nez v5, :cond_6

    .line 146
    .line 147
    iput-object p3, v0, Lio/ktor/utils/io/a$g;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v4, v0, Lio/ktor/utils/io/a$g;->L$1:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v2, v0, Lio/ktor/utils/io/a$g;->L$2:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object p2, v0, Lio/ktor/utils/io/a$g;->L$3:Ljava/lang/Object;

    .line 154
    .line 155
    iput-object p1, v0, Lio/ktor/utils/io/a$g;->L$4:Ljava/lang/Object;

    .line 156
    .line 157
    iput v3, v0, Lio/ktor/utils/io/a$g;->label:I

    .line 158
    .line 159
    .line 160
    invoke-direct {p3, v3, v0}, Lio/ktor/utils/io/a;->h0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 161
    move-result-object v5

    .line 162
    .line 163
    if-ne v5, v1, :cond_4

    .line 164
    return-object v1

    .line 165
    :cond_4
    move-object v11, v5

    .line 166
    move-object v5, p3

    .line 167
    move-object p3, v11

    .line 168
    .line 169
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    move-result p3

    .line 174
    .line 175
    if-eqz p3, :cond_5

    .line 176
    move-object p3, v5

    .line 177
    move v5, v3

    .line 178
    goto :goto_3

    .line 179
    :cond_5
    move-object p3, v5

    .line 180
    :cond_6
    const/4 v5, 0x0

    .line 181
    .line 182
    :goto_3
    if-eqz v5, :cond_7

    .line 183
    .line 184
    .line 185
    invoke-static {p2, v3, p1}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 186
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    goto :goto_1

    .line 188
    .line 189
    .line 190
    :cond_7
    :try_start_3
    invoke-virtual {p2}, Lr7/p;->h()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Lio/ktor/utils/io/a;->j()Ljava/lang/Throwable;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    if-nez p1, :cond_8

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Lr7/i;->L0()Lr7/j;

    .line 200
    move-result-object p1

    .line 201
    return-object p1

    .line 202
    :catchall_1
    move-exception p1

    .line 203
    move-object p3, v4

    .line 204
    goto :goto_5

    .line 205
    :cond_8
    throw p1

    .line 206
    .line 207
    .line 208
    :goto_4
    invoke-virtual {p2}, Lr7/p;->h()V

    .line 209
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    :catchall_2
    move-exception p1

    .line 211
    .line 212
    .line 213
    :goto_5
    invoke-virtual {p3}, Lr7/p;->release()V

    .line 214
    throw p1
.end method

.method private final h0(ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 7
    .line 8
    iget v0, v0, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-lt v0, p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    if-nez p2, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    iget-object p2, p2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget p2, p2, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 43
    .line 44
    if-lt p2, p1, :cond_1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->O()Lkotlin/coroutines/d;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p2, "Read operation is already in progress"

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-static {p2}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 69
    .line 70
    new-instance p1, Lw7/i;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 74
    throw p1

    .line 75
    .line 76
    :cond_4
    if-ne p1, v1, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v1, p2}, Lio/ktor/utils/io/a;->i0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->j0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method

.method private final i0(ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/a$h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$h;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$h;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$h;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$h;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/a$h;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/a$h;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$h;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lio/ktor/utils/io/a$h;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lio/ktor/utils/io/a;

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p2

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    iget-object v2, p2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 65
    .line 66
    iget v2, v2, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 67
    .line 68
    if-ge v2, p1, :cond_6

    .line 69
    .line 70
    iget-object v2, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lio/ktor/utils/io/a;->S()Lkotlin/coroutines/d;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    sget-object v2, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 81
    .line 82
    if-eq p2, v2, :cond_6

    .line 83
    .line 84
    instance-of p2, p2, Lio/ktor/utils/io/internal/g$b;

    .line 85
    .line 86
    if-nez p2, :cond_6

    .line 87
    .line 88
    :cond_3
    :try_start_1
    iput-object p0, v0, Lio/ktor/utils/io/a$h;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput p1, v0, Lio/ktor/utils/io/a$h;->I$0:I

    .line 91
    .line 92
    iput v3, v0, Lio/ktor/utils/io/a$h;->label:I

    .line 93
    .line 94
    iget-object p2, p0, Lio/ktor/utils/io/a;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/b;

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->z0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p1}, Lio/ktor/utils/io/internal/b;->f(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    if-ne p2, p1, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    goto :goto_1

    .line 116
    :catchall_1
    move-exception p2

    .line 117
    move-object p1, p0

    .line 118
    goto :goto_3

    .line 119
    .line 120
    :cond_4
    :goto_1
    if-ne p2, v1, :cond_5

    .line 121
    return-object v1

    .line 122
    :cond_5
    :goto_2
    return-object p2

    .line 123
    :goto_3
    const/4 v0, 0x0

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, v0}, Lio/ktor/utils/io/a;->t0(Lkotlin/coroutines/d;)V

    .line 127
    throw p2

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 131
    move-result-object p1

    .line 132
    return-object p1
.end method

.method private final j0(ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/a$i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/a$i;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/a$i;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/a$i;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/a$i;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/a$i;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/a$i;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/a$i;->label:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget p1, v0, Lio/ktor/utils/io/a$i;->I$0:I

    .line 41
    .line 42
    iget-object v2, v0, Lio/ktor/utils/io/a$i;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lio/ktor/utils/io/a;

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 60
    move-object v2, p0

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-direct {v2}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    iget-object p2, p2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 67
    .line 68
    iget p2, p2, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 69
    .line 70
    if-lt p2, p1, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-direct {v2}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    if-eqz p2, :cond_8

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    if-nez v0, :cond_7

    .line 88
    .line 89
    .line 90
    invoke-direct {v2}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    iget-object p2, p2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget p2, p2, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 102
    .line 103
    if-lt p2, p1, :cond_5

    .line 104
    move v3, v4

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-direct {v2}, Lio/ktor/utils/io/a;->O()Lkotlin/coroutines/d;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    if-nez p1, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    .line 117
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-string p2, "Read operation is already in progress"

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 131
    .line 132
    new-instance p1, Lw7/i;

    .line 133
    .line 134
    .line 135
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 136
    throw p1

    .line 137
    .line 138
    :cond_8
    iput-object v2, v0, Lio/ktor/utils/io/a$i;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    iput p1, v0, Lio/ktor/utils/io/a$i;->I$0:I

    .line 141
    .line 142
    iput v4, v0, Lio/ktor/utils/io/a$i;->label:I

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, p1, v0}, Lio/ktor/utils/io/a;->i0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    if-ne p2, v1, :cond_9

    .line 149
    return-object v1

    .line 150
    .line 151
    :cond_9
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    move-result p2

    .line 156
    .line 157
    if-nez p2, :cond_3

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 161
    move-result-object p1

    .line 162
    return-object p1
.end method

.method private final k0(Lio/ktor/utils/io/internal/g$c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->pool:Lt7/g;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lt7/g;->S(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final l0(J)Lr7/j;
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lr7/i;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v1}, Lr7/i;-><init>(Lt7/g;ILkotlin/jvm/internal/k;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {v0, v2, v1}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lr7/a;->f()I

    .line 15
    move-result v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lr7/a;->j()I

    .line 19
    move-result v4

    .line 20
    sub-int/2addr v3, v4

    .line 21
    int-to-long v3, v3

    .line 22
    .line 23
    cmp-long v3, v3, p1

    .line 24
    .line 25
    if-lez v3, :cond_0

    .line 26
    long-to-int v3, p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lr7/a;->s(I)V

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x6

    .line 36
    const/4 v8, 0x0

    .line 37
    move-object v3, p0

    .line 38
    move-object v4, v1

    .line 39
    .line 40
    .line 41
    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/a;->Z(Lio/ktor/utils/io/a;Lr7/a;IIILjava/lang/Object;)I

    .line 42
    move-result v3

    .line 43
    int-to-long v3, v3

    .line 44
    sub-long/2addr p1, v3

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long v3, p1, v3

    .line 49
    .line 50
    if-lez v3, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->o()Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v2, v1}, Ls7/g;->d(Lr7/p;ILs7/a;)Ls7/a;

    .line 60
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lr7/p;->h()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lr7/i;->L0()Lr7/j;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-virtual {v0}, Lr7/p;->h()V

    .line 75
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-virtual {v0}, Lr7/p;->release()V

    .line 79
    throw p1
.end method

.method private final n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;
    .locals 1

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-direct {p1}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/d;->c()Lio/ktor/utils/io/a;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p1, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    return-object p1
.end method

.method private final o0()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    .line 4
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/a;->_state:Ljava/lang/Object;

    .line 5
    move-object v3, v2

    .line 6
    .line 7
    check-cast v3, Lio/ktor/utils/io/internal/g;

    .line 8
    move-object v4, v1

    .line 9
    .line 10
    check-cast v4, Lio/ktor/utils/io/internal/g$b;

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    iget-object v1, v4, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->j()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lio/ktor/utils/io/a;->s0()V

    .line 21
    move-object v1, v0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/g;->e()Lio/ktor/utils/io/internal/g;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    instance-of v5, v4, Lio/ktor/utils/io/internal/g$b;

    .line 28
    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    if-ne v5, v3, :cond_2

    .line 36
    .line 37
    iget-object v3, v4, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/i;->k()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    sget-object v1, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 46
    move-object v6, v4

    .line 47
    move-object v4, v1

    .line 48
    move-object v1, v6

    .line 49
    .line 50
    :cond_2
    sget-object v3, Lio/ktor/utils/io/a;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    .line 53
    invoke-static {v3, p0, v2, v4}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    sget-object v0, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 59
    .line 60
    if-ne v4, v0, :cond_4

    .line 61
    .line 62
    check-cast v1, Lio/ktor/utils/io/internal/g$b;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/g$b;->g()Lio/ktor/utils/io/internal/g$c;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->k0(Lio/ktor/utils/io/internal/g$c;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->s0()V

    .line 75
    return-void

    .line 76
    .line 77
    :cond_4
    instance-of v1, v4, Lio/ktor/utils/io/internal/g$b;

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v1, v4, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->g()Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    iget-object v1, v4, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->k()Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-static {v3, p0, v4, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    iget-object v0, v4, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/i;->j()V

    .line 107
    .line 108
    check-cast v4, Lio/ktor/utils/io/internal/g$b;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/g$b;->g()Lio/ktor/utils/io/internal/g$c;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->k0(Lio/ktor/utils/io/internal/g$c;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lio/ktor/utils/io/a;->s0()V

    .line 119
    :cond_5
    return-void
.end method

.method public static final synthetic p(Lio/ktor/utils/io/a;)Lio/ktor/utils/io/internal/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lio/ktor/utils/io/a;)Lkotlin/coroutines/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->S()Lkotlin/coroutines/d;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final q0(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lio/ktor/utils/io/a;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lkotlin/coroutines/d;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    iget-object v2, v2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 34
    .line 35
    iget v2, v2, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 36
    .line 37
    if-lez v2, :cond_1

    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 52
    .line 53
    :cond_2
    :goto_1
    sget-object v0, Lio/ktor/utils/io/a;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Lkotlin/coroutines/d;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    new-instance p1, Lio/ktor/utils/io/p;

    .line 68
    .line 69
    const-string v1, "Byte channel was closed"

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v1}, Lio/ktor/utils/io/p;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-static {p1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 84
    :cond_4
    return-void
.end method

.method public static final synthetic r(Lio/ktor/utils/io/a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/ktor/utils/io/a;->writeSuspensionSize:I

    .line 3
    return p0
.end method

.method private final r0()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lio/ktor/utils/io/a;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lkotlin/coroutines/d;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    :cond_0
    if-eqz v1, :cond_1

    .line 24
    .line 25
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 40
    .line 41
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic s(Lio/ktor/utils/io/a;Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->c0(Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s0()V
    .locals 4

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->S()Lkotlin/coroutines/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    instance-of v3, v2, Lio/ktor/utils/io/internal/g$g;

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    instance-of v3, v2, Lio/ktor/utils/io/internal/g$e;

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    sget-object v3, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 32
    .line 33
    if-eq v2, v3, :cond_2

    .line 34
    return-void

    .line 35
    .line 36
    :cond_2
    sget-object v2, Lio/ktor/utils/io/a;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p0, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 48
    .line 49
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_3
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :goto_1
    return-void
.end method

.method public static final synthetic t(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->d0([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final t0(Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/a;->_readOp:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic u(Lio/ktor/utils/io/a;ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->e0(ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v(Lio/ktor/utils/io/a;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->g0(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lio/ktor/utils/io/a;ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->i0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final w0()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    .line 2
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/a;->_state:Ljava/lang/Object;

    .line 3
    move-object v1, v0

    .line 4
    .line 5
    check-cast v1, Lio/ktor/utils/io/internal/g;

    .line 6
    .line 7
    sget-object v2, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    sget-object v2, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {v0}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 40
    .line 41
    new-instance v0, Lw7/i;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 45
    throw v0

    .line 46
    :cond_3
    :goto_1
    return-object v3

    .line 47
    .line 48
    .line 49
    :cond_4
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    if-eqz v2, :cond_6

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    if-nez v2, :cond_5

    .line 59
    goto :goto_2

    .line 60
    .line 61
    .line 62
    :cond_5
    invoke-static {v2}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 63
    .line 64
    new-instance v0, Lw7/i;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 68
    throw v0

    .line 69
    .line 70
    :cond_6
    :goto_2
    iget-object v2, v1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 71
    .line 72
    iget v2, v2, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 73
    .line 74
    if-nez v2, :cond_7

    .line 75
    return-object v3

    .line 76
    .line 77
    .line 78
    :cond_7
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/g;->c()Lio/ktor/utils/io/internal/g;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    sget-object v2, Lio/ktor/utils/io/a;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 82
    .line 83
    .line 84
    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/g;->a()Ljava/nio/ByteBuffer;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iget v2, p0, Lio/ktor/utils/io/a;->readPosition:I

    .line 94
    .line 95
    iget-object v1, v1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 96
    .line 97
    iget v1, v1, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0, v2, v1}, Lio/ktor/utils/io/a;->V(Ljava/nio/ByteBuffer;II)V

    .line 101
    return-object v0
.end method

.method public static final synthetic x(Lio/ktor/utils/io/a;ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/a;->j0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y(Lio/ktor/utils/io/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->r0()V

    .line 4
    return-void
.end method

.method private final y0()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    instance-of v0, v0, Lio/ktor/utils/io/internal/g$b;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public static final synthetic z(Lio/ktor/utils/io/a;Lkotlinx/coroutines/b2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/ktor/utils/io/a;->attachedJob:Lkotlinx/coroutines/b2;

    .line 3
    return-void
.end method

.method private final z0(ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 7
    .line 8
    iget v1, v1, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 9
    .line 10
    if-ge v1, p1, :cond_9

    .line 11
    .line 12
    iget-object v1, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lio/ktor/utils/io/a;->S()Lkotlin/coroutines/d;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 23
    .line 24
    if-eq v0, v1, :cond_9

    .line 25
    .line 26
    instance-of v0, v0, Lio/ktor/utils/io/internal/g$b;

    .line 27
    .line 28
    if-nez v0, :cond_9

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    sget-object p1, Lw7/v;->Companion:Lw7/v$a;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iget-object v0, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget-object v1, v1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 79
    .line 80
    iget v1, v1, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x1

    .line 83
    .line 84
    if-lt v1, p1, :cond_3

    .line 85
    move p1, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move p1, v2

    .line 88
    .line 89
    :goto_0
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    move v2, v3

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-direct {p0}, Lio/ktor/utils/io/a;->O()Lkotlin/coroutines/d;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    if-nez v0, :cond_0

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    iget-object v1, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 129
    .line 130
    iget v1, v1, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 131
    .line 132
    if-ge v1, p1, :cond_0

    .line 133
    .line 134
    iget-object v1, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 135
    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lio/ktor/utils/io/a;->S()Lkotlin/coroutines/d;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    sget-object v1, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 145
    .line 146
    if-eq v0, v1, :cond_0

    .line 147
    .line 148
    instance-of v0, v0, Lio/ktor/utils/io/internal/g$b;

    .line 149
    .line 150
    if-nez v0, :cond_0

    .line 151
    .line 152
    :cond_6
    sget-object v0, Lio/ktor/utils/io/a;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 153
    const/4 v1, 0x0

    .line 154
    .line 155
    .line 156
    invoke-static {v0, p0, v1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    move-result v2

    .line 158
    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    if-nez v2, :cond_7

    .line 166
    .line 167
    .line 168
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    iget-object v3, v2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 172
    .line 173
    iget v3, v3, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 174
    .line 175
    if-ge v3, p1, :cond_7

    .line 176
    .line 177
    iget-object v3, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 178
    .line 179
    if-eqz v3, :cond_a

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lio/ktor/utils/io/a;->S()Lkotlin/coroutines/d;

    .line 183
    move-result-object v3

    .line 184
    .line 185
    if-eqz v3, :cond_a

    .line 186
    .line 187
    sget-object v3, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 188
    .line 189
    if-eq v2, v3, :cond_7

    .line 190
    .line 191
    instance-of v2, v2, Lio/ktor/utils/io/internal/g$b;

    .line 192
    .line 193
    if-nez v2, :cond_7

    .line 194
    goto :goto_1

    .line 195
    .line 196
    .line 197
    :cond_7
    invoke-static {v0, p0, p2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    move-result v0

    .line 199
    .line 200
    if-nez v0, :cond_0

    .line 201
    goto :goto_1

    .line 202
    .line 203
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 204
    .line 205
    const-string p2, "Operation is already in progress"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    move-result-object p2

    .line 210
    .line 211
    .line 212
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 213
    throw p1

    .line 214
    .line 215
    :cond_9
    sget-object p1, Lw7/v;->Companion:Lw7/v$a;

    .line 216
    .line 217
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 218
    .line 219
    .line 220
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    .line 224
    invoke-interface {p2, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 228
    move-result-object p1

    .line 229
    return-object p1
.end method


# virtual methods
.method public final C0()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Lio/ktor/utils/io/a;->B0(Z)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->L(Lio/ktor/utils/io/internal/d;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/a;->r0()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lio/ktor/utils/io/a;->s0()V

    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_2
    :goto_0
    return v1
.end method

.method public final D0(ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/utils/io/a;->Q0(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p1}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 23
    .line 24
    new-instance p1, Lw7/i;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 28
    throw p1

    .line 29
    .line 30
    :cond_1
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_2
    iput p1, p0, Lio/ktor/utils/io/a;->writeSuspensionSize:I

    .line 34
    .line 35
    iget-object p1, p0, Lio/ktor/utils/io/a;->attachedJob:Lkotlinx/coroutines/b2;

    .line 36
    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    iget-object p1, p0, Lio/ktor/utils/io/a;->writeSuspension:Le8/l;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    if-ne p1, p2, :cond_4

    .line 59
    return-object p1

    .line 60
    .line 61
    :cond_4
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 62
    return-object p1

    .line 63
    .line 64
    :cond_5
    iget-object p1, p0, Lio/ktor/utils/io/a;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/b;

    .line 65
    .line 66
    iget-object v0, p0, Lio/ktor/utils/io/a;->writeSuspension:Le8/l;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lio/ktor/utils/io/internal/b;->f(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    if-ne p1, v0, :cond_6

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    if-ne p1, p2, :cond_7

    .line 93
    return-object p1

    .line 94
    .line 95
    :cond_7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 96
    return-object p1
.end method

.method public H0([BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->I0(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lio/ktor/utils/io/a;JLio/ktor/utils/io/internal/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 25
    .param p1    # Lio/ktor/utils/io/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/ktor/utils/io/internal/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/a;",
            "J",
            "Lio/ktor/utils/io/internal/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    instance-of v4, v3, Lio/ktor/utils/io/a$c;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/a$c;

    iget v5, v4, Lio/ktor/utils/io/a$c;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lio/ktor/utils/io/a$c;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lio/ktor/utils/io/a$c;

    invoke-direct {v4, v1, v3}, Lio/ktor/utils/io/a$c;-><init>(Lio/ktor/utils/io/a;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object v3, v4, Lio/ktor/utils/io/a$c;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    move-result-object v5

    .line 1
    iget v6, v4, Lio/ktor/utils/io/a$c;->label:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget-boolean v0, v4, Lio/ktor/utils/io/a$c;->Z$0:Z

    iget-wide v11, v4, Lio/ktor/utils/io/a$c;->J$0:J

    iget-object v2, v4, Lio/ktor/utils/io/a$c;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/o0;

    iget-object v6, v4, Lio/ktor/utils/io/a$c;->L$2:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/internal/d;

    iget-object v13, v4, Lio/ktor/utils/io/a$c;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/a;

    iget-object v14, v4, Lio/ktor/utils/io/a$c;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/a;

    :try_start_0
    invoke-static {v3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v7

    move v1, v8

    move-object v8, v2

    move-object v7, v5

    move-wide v2, v11

    move v5, v0

    move v11, v9

    move-object v0, v13

    const/4 v9, 0x0

    move-object/from16 v23, v6

    move-object v6, v4

    move-object/from16 v4, v23

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v4, Lio/ktor/utils/io/a$c;->Z$0:Z

    iget-wide v11, v4, Lio/ktor/utils/io/a$c;->J$0:J

    iget-object v2, v4, Lio/ktor/utils/io/a$c;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/o0;

    iget-object v6, v4, Lio/ktor/utils/io/a$c;->L$2:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/internal/d;

    iget-object v13, v4, Lio/ktor/utils/io/a$c;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/a;

    iget-object v14, v4, Lio/ktor/utils/io/a$c;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/a;

    :try_start_1
    invoke-static {v3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v8

    goto/16 :goto_f

    :cond_3
    iget-wide v11, v4, Lio/ktor/utils/io/a$c;->J$1:J

    iget-boolean v0, v4, Lio/ktor/utils/io/a$c;->Z$0:Z

    iget-wide v13, v4, Lio/ktor/utils/io/a$c;->J$0:J

    iget-object v2, v4, Lio/ktor/utils/io/a$c;->L$9:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/a;

    iget-object v6, v4, Lio/ktor/utils/io/a$c;->L$8:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    iget-object v15, v4, Lio/ktor/utils/io/a$c;->L$7:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/internal/i;

    iget-object v7, v4, Lio/ktor/utils/io/a$c;->L$6:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/internal/i;

    iget-object v8, v4, Lio/ktor/utils/io/a$c;->L$5:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/a;

    iget-object v10, v4, Lio/ktor/utils/io/a$c;->L$4:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/a;

    iget-object v9, v4, Lio/ktor/utils/io/a$c;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/o0;

    move/from16 p1, v0

    iget-object v0, v4, Lio/ktor/utils/io/a$c;->L$2:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/internal/d;

    move-object/from16 p2, v0

    iget-object v0, v4, Lio/ktor/utils/io/a$c;->L$1:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/a;

    move-object/from16 p3, v0

    iget-object v0, v4, Lio/ktor/utils/io/a$c;->L$0:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lio/ktor/utils/io/a;

    :try_start_2
    invoke-static {v3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v15

    move-object/from16 v3, v16

    move-object/from16 v16, p2

    move-wide v14, v13

    move-wide v12, v11

    move-object v11, v7

    move-object v7, v5

    move/from16 v5, p1

    move-object/from16 p1, p3

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v14, v16

    goto/16 :goto_12

    :cond_4
    invoke-static {v3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/a;->o()Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_8

    if-eqz v2, :cond_6

    .line 3
    invoke-direct {v0, v2}, Lio/ktor/utils/io/a;->A0(Lio/ktor/utils/io/internal/d;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/a;->j()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/a;->j()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/a;->c(Ljava/lang/Throwable;)Z

    .line 6
    :cond_7
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_8
    if-eqz v2, :cond_9

    .line 7
    invoke-direct {v0, v2}, Lio/ktor/utils/io/a;->A0(Lio/ktor/utils/io/internal/d;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 9
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/a;->h()Z

    move-result v3

    .line 10
    :try_start_3
    new-instance v6, Lkotlin/jvm/internal/o0;

    invoke-direct {v6}, Lkotlin/jvm/internal/o0;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-object v14, v1

    move-object v7, v5

    move-object v8, v6

    move v5, v3

    move-object v6, v4

    move-object v4, v2

    move-wide/from16 v2, p2

    .line 11
    :goto_2
    :try_start_4
    iget-wide v9, v8, Lkotlin/jvm/internal/o0;->element:J

    cmp-long v9, v9, v2

    if-gez v9, :cond_27

    .line 12
    iget-object v9, v14, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    if-eqz v9, :cond_a

    invoke-direct {v14, v14, v9}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    move-result-object v9

    if-nez v9, :cond_b

    :cond_a
    move-object v9, v14

    .line 13
    :cond_b
    invoke-virtual {v9}, Lio/ktor/utils/io/a;->x0()Ljava/nio/ByteBuffer;

    move-result-object v10

    if-nez v10, :cond_c

    goto/16 :goto_d

    .line 14
    :cond_c
    invoke-direct {v9}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    move-result-object v11

    iget-object v11, v11, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 15
    invoke-virtual {v9}, Lio/ktor/utils/io/a;->R()J

    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    :try_start_5
    invoke-direct {v9}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    if-nez v15, :cond_23

    move-object/from16 v16, v9

    move-object v15, v11

    move-wide/from16 p1, v12

    move-wide v12, v2

    move-object v9, v8

    move-object/from16 v8, v16

    move-object v3, v14

    .line 17
    :goto_3
    :try_start_6
    iget-wide v1, v9, Lkotlin/jvm/internal/o0;->element:J

    cmp-long v1, v1, v12

    if-gez v1, :cond_17

    .line 18
    iget v1, v15, Lio/ktor/utils/io/internal/i;->_availableForWrite$internal:I

    if-nez v1, :cond_f

    .line 19
    iput-object v3, v6, Lio/ktor/utils/io/a$c;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lio/ktor/utils/io/a$c;->L$1:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/utils/io/a$c;->L$2:Ljava/lang/Object;

    iput-object v9, v6, Lio/ktor/utils/io/a$c;->L$3:Ljava/lang/Object;

    iput-object v14, v6, Lio/ktor/utils/io/a$c;->L$4:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/utils/io/a$c;->L$5:Ljava/lang/Object;

    iput-object v11, v6, Lio/ktor/utils/io/a$c;->L$6:Ljava/lang/Object;

    iput-object v15, v6, Lio/ktor/utils/io/a$c;->L$7:Ljava/lang/Object;

    iput-object v10, v6, Lio/ktor/utils/io/a$c;->L$8:Ljava/lang/Object;

    move-object/from16 v2, v16

    iput-object v2, v6, Lio/ktor/utils/io/a$c;->L$9:Ljava/lang/Object;

    iput-wide v12, v6, Lio/ktor/utils/io/a$c;->J$0:J

    iput-boolean v5, v6, Lio/ktor/utils/io/a$c;->Z$0:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 p3, v3

    move-object/from16 v16, v4

    move-wide/from16 v3, p1

    :try_start_7
    iput-wide v3, v6, Lio/ktor/utils/io/a$c;->J$1:J

    const/4 v1, 0x1

    iput v1, v6, Lio/ktor/utils/io/a$c;->label:I

    move-object/from16 p1, v0

    invoke-virtual {v2, v1, v6}, Lio/ktor/utils/io/a;->D0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v0, v7, :cond_d

    return-object v7

    :cond_d
    move-object v1, v15

    move-wide/from16 v23, v3

    move-object/from16 v3, p3

    move-object v4, v6

    move-object v6, v10

    move-object v10, v14

    move-wide v14, v12

    move-wide/from16 v12, v23

    .line 20
    :goto_4
    :try_start_8
    iget-object v0, v2, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    if-nez v0, :cond_e

    .line 21
    iget v0, v1, Lio/ktor/utils/io/internal/i;->_availableForWrite$internal:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 p2, v3

    move-object/from16 p3, v16

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    move-object/from16 p1, v10

    move-object v10, v6

    move-object v6, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v14, v3

    move-object v7, v11

    move-wide v11, v12

    goto/16 :goto_12

    :cond_e
    move-object/from16 v0, p1

    move-object v6, v4

    move-object/from16 v4, v16

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    :goto_5
    move-object v7, v11

    move-object v10, v14

    move-object/from16 v14, p3

    move-wide v11, v3

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 p3, v3

    move-wide/from16 v3, p1

    goto :goto_5

    :cond_f
    move-object/from16 p3, v3

    move-object/from16 v2, v16

    move-object/from16 v16, v4

    move-wide/from16 v3, p1

    move-object/from16 p1, v0

    move-object/from16 p2, p3

    move v0, v1

    move-object/from16 p3, v16

    move-object/from16 v1, p1

    move-object/from16 p1, v14

    move-wide/from16 v23, v3

    move-object v3, v2

    move-object v2, v15

    move-wide v14, v12

    move-wide/from16 v12, v23

    .line 22
    :goto_6
    :try_start_9
    iget v4, v3, Lio/ktor/utils/io/a;->writePosition:I

    invoke-direct {v3, v10, v4, v0}, Lio/ktor/utils/io/a;->V(Ljava/nio/ByteBuffer;II)V

    .line 23
    new-instance v4, Lkotlin/jvm/internal/n0;

    invoke-direct {v4}, Lkotlin/jvm/internal/n0;-><init>()V

    move-object/from16 p4, v6

    .line 24
    invoke-direct {v1}, Lio/ktor/utils/io/a;->w0()Ljava/nio/ByteBuffer;

    move-result-object v6

    if-nez v6, :cond_10

    move/from16 v21, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-wide/from16 v18, v12

    move-object v8, v3

    move-object v13, v11

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_8

    :cond_10
    move-object/from16 v16, v7

    .line 25
    invoke-direct {v1}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    move-result-object v7

    iget-object v7, v7, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-object/from16 v17, v8

    .line 26
    :try_start_a
    iget v8, v7, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    if-nez v8, :cond_11

    .line 27
    :try_start_b
    invoke-direct {v1}, Lio/ktor/utils/io/a;->o0()V

    .line 28
    invoke-virtual {v1}, Lio/ktor/utils/io/a;->C0()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move/from16 v21, v0

    move-object v8, v3

    move-wide/from16 v18, v12

    move-object v3, v1

    move-object v1, v4

    move-object v13, v11

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    move-object v7, v11

    move-wide v11, v12

    move-object/from16 v8, v17

    goto/16 :goto_12

    .line 29
    :cond_11
    :try_start_c
    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    move-wide/from16 v18, v12

    move-object v13, v11

    int-to-long v11, v8

    .line 30
    :try_start_d
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move/from16 v21, v0

    move-object/from16 v20, v1

    int-to-long v0, v8

    move-object v8, v3

    move-object/from16 v22, v4

    .line 31
    :try_start_e
    iget-wide v3, v9, Lkotlin/jvm/internal/o0;->element:J

    sub-long v3, v14, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 32
    invoke-virtual {v2, v0}, Lio/ktor/utils/io/internal/i;->n(I)I

    move-result v0

    if-gtz v0, :cond_12

    move-object/from16 v3, v20

    move-object/from16 v1, v22

    goto :goto_7

    .line 33
    :cond_12
    invoke-virtual {v7, v0}, Lio/ktor/utils/io/internal/i;->m(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 34
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v1, v22

    iput v0, v1, Lkotlin/jvm/internal/n0;->element:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-object/from16 v3, v20

    .line 36
    :try_start_f
    invoke-direct {v3, v6, v7, v0}, Lio/ktor/utils/io/a;->G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 37
    :goto_7
    :try_start_10
    invoke-direct {v3}, Lio/ktor/utils/io/a;->o0()V

    .line 38
    invoke-virtual {v3}, Lio/ktor/utils/io/a;->C0()Z

    :goto_8
    iget v0, v1, Lkotlin/jvm/internal/n0;->element:I

    if-gtz v0, :cond_13

    move-object/from16 v10, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object v0, v3

    move-object v11, v13

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-wide/from16 v12, v18

    move-object/from16 v3, p2

    goto/16 :goto_b

    .line 39
    :cond_13
    invoke-direct {v8, v10, v2, v0}, Lio/ktor/utils/io/a;->H(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;I)V

    .line 40
    iget-wide v6, v9, Lkotlin/jvm/internal/o0;->element:J

    iget v0, v1, Lkotlin/jvm/internal/n0;->element:I

    int-to-long v11, v0

    add-long/2addr v6, v11

    iput-wide v6, v9, Lkotlin/jvm/internal/o0;->element:J

    sub-int v0, v21, v0

    if-eqz v0, :cond_14

    if-eqz v5, :cond_15

    .line 41
    :cond_14
    invoke-virtual {v8}, Lio/ktor/utils/io/a;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_15
    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object v0, v3

    move-object v11, v13

    move-wide v12, v14

    move-object/from16 v7, v16

    move-object/from16 v14, p1

    move-object/from16 v3, p2

    move-object v15, v2

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    move-wide/from16 p1, v18

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    move-object v7, v13

    move-object/from16 v8, v17

    :goto_9
    move-wide/from16 v11, v18

    goto/16 :goto_12

    :catchall_7
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object/from16 v3, v20

    goto :goto_a

    :cond_16
    move-object/from16 v3, v20

    .line 42
    :try_start_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_9
    move-exception v0

    move-object v3, v1

    goto :goto_a

    :catchall_a
    move-exception v0

    move-object v3, v1

    move-wide/from16 v18, v12

    move-object v13, v11

    .line 43
    :goto_a
    :try_start_12
    invoke-direct {v3}, Lio/ktor/utils/io/a;->o0()V

    .line 44
    invoke-virtual {v3}, Lio/ktor/utils/io/a;->C0()Z

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_b
    move-exception v0

    move-object/from16 v17, v8

    move-wide/from16 v18, v12

    move-object v13, v11

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    move-object v7, v13

    goto :goto_9

    :cond_17
    move-object/from16 p3, v3

    move-object/from16 v16, v4

    move-wide/from16 v3, p1

    move-object/from16 p1, v0

    move-object v10, v14

    move-wide v14, v12

    move-wide v12, v3

    move-object/from16 v4, v16

    move-object/from16 v3, p3

    .line 45
    :goto_b
    :try_start_13
    invoke-virtual {v11}, Lio/ktor/utils/io/internal/i;->h()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v8}, Lio/ktor/utils/io/a;->h()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_c

    :catchall_c
    move-exception v0

    move-object v14, v3

    goto/16 :goto_14

    :cond_18
    :goto_c
    invoke-virtual {v8}, Lio/ktor/utils/io/a;->flush()V

    :cond_19
    if-eq v8, v10, :cond_1a

    .line 46
    invoke-virtual {v10}, Lio/ktor/utils/io/a;->R()J

    move-result-wide v1

    invoke-virtual {v8}, Lio/ktor/utils/io/a;->R()J

    move-result-wide v16

    sub-long v16, v16, v12

    add-long v1, v1, v16

    invoke-virtual {v10, v1, v2}, Lio/ktor/utils/io/a;->v0(J)V

    .line 47
    :cond_1a
    invoke-virtual {v8}, Lio/ktor/utils/io/a;->p0()V

    .line 48
    invoke-virtual {v8}, Lio/ktor/utils/io/a;->C0()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    move-object v8, v9

    move-wide/from16 v23, v14

    move-object v14, v3

    move-wide/from16 v2, v23

    :goto_d
    if-eqz v4, :cond_1d

    .line 49
    :try_start_14
    invoke-direct {v0, v4}, Lio/ktor/utils/io/a;->A0(Lio/ktor/utils/io/internal/d;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_13

    .line 50
    :cond_1b
    invoke-direct {v0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    move-result-object v1

    iget-object v1, v1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->e()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 51
    invoke-direct {v0}, Lio/ktor/utils/io/a;->s0()V

    :cond_1c
    :goto_e
    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 52
    :cond_1d
    iget-wide v9, v8, Lkotlin/jvm/internal/o0;->element:J

    cmp-long v1, v9, v2

    if-gez v1, :cond_27

    .line 53
    invoke-virtual {v14}, Lio/ktor/utils/io/a;->flush()V

    .line 54
    invoke-virtual {v0}, Lio/ktor/utils/io/a;->f()I

    move-result v1

    if-nez v1, :cond_22

    .line 55
    iput-object v14, v6, Lio/ktor/utils/io/a$c;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lio/ktor/utils/io/a$c;->L$1:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/utils/io/a$c;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/utils/io/a$c;->L$3:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v6, Lio/ktor/utils/io/a$c;->L$4:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/utils/io/a$c;->L$5:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/utils/io/a$c;->L$6:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/utils/io/a$c;->L$7:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/utils/io/a$c;->L$8:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/utils/io/a$c;->L$9:Ljava/lang/Object;

    iput-wide v2, v6, Lio/ktor/utils/io/a$c;->J$0:J

    iput-boolean v5, v6, Lio/ktor/utils/io/a$c;->Z$0:Z

    const/4 v1, 0x2

    iput v1, v6, Lio/ktor/utils/io/a$c;->label:I

    const/4 v9, 0x1

    invoke-direct {v0, v9, v6}, Lio/ktor/utils/io/a;->i0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v7, :cond_1e

    return-object v7

    :cond_1e
    move-object v13, v0

    move-wide v11, v2

    move v0, v5

    move-object v5, v7

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v23, v6

    move-object v6, v4

    move-object/from16 v4, v23

    :goto_f
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v6, :cond_20

    .line 56
    invoke-direct {v13, v6}, Lio/ktor/utils/io/a;->A0(Lio/ktor/utils/io/internal/d;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_10

    :cond_1f
    if-eqz v6, :cond_21

    .line 57
    invoke-direct {v13, v6}, Lio/ktor/utils/io/a;->A0(Lio/ktor/utils/io/internal/d;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_10

    :cond_20
    move-object v8, v2

    move-object v7, v5

    move-wide v2, v11

    move v5, v0

    move-object v0, v13

    move-object/from16 v23, v6

    move-object v6, v4

    move-object/from16 v4, v23

    goto :goto_11

    :cond_21
    :goto_10
    move v5, v0

    move-object v8, v2

    goto :goto_13

    :cond_22
    const/4 v1, 0x2

    .line 58
    :goto_11
    iget-object v9, v14, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    if-eqz v9, :cond_1c

    .line 59
    iput-object v14, v6, Lio/ktor/utils/io/a$c;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lio/ktor/utils/io/a$c;->L$1:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/utils/io/a$c;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/utils/io/a$c;->L$3:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v6, Lio/ktor/utils/io/a$c;->L$4:Ljava/lang/Object;

    iput-object v9, v6, Lio/ktor/utils/io/a$c;->L$5:Ljava/lang/Object;

    iput-object v9, v6, Lio/ktor/utils/io/a$c;->L$6:Ljava/lang/Object;

    iput-object v9, v6, Lio/ktor/utils/io/a$c;->L$7:Ljava/lang/Object;

    iput-object v9, v6, Lio/ktor/utils/io/a$c;->L$8:Ljava/lang/Object;

    iput-object v9, v6, Lio/ktor/utils/io/a$c;->L$9:Ljava/lang/Object;

    iput-wide v2, v6, Lio/ktor/utils/io/a$c;->J$0:J

    iput-boolean v5, v6, Lio/ktor/utils/io/a$c;->Z$0:Z

    const/4 v10, 0x3

    iput v10, v6, Lio/ktor/utils/io/a$c;->label:I

    const/4 v11, 0x1

    invoke-virtual {v14, v11, v6}, Lio/ktor/utils/io/a;->D0(ILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v12
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-ne v12, v7, :cond_1c

    return-object v7

    .line 60
    :cond_23
    :try_start_15
    invoke-virtual {v15}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lw7/i;

    invoke-direct {v0}, Lw7/i;-><init>()V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_d
    move-exception v0

    move-object v8, v9

    move-object v7, v11

    move-wide v11, v12

    move-object v10, v14

    .line 61
    :goto_12
    :try_start_16
    invoke-virtual {v7}, Lio/ktor/utils/io/internal/i;->h()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v8}, Lio/ktor/utils/io/a;->h()Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    invoke-virtual {v8}, Lio/ktor/utils/io/a;->flush()V

    :cond_25
    if-eq v8, v10, :cond_26

    .line 62
    invoke-virtual {v10}, Lio/ktor/utils/io/a;->R()J

    move-result-wide v1

    invoke-virtual {v8}, Lio/ktor/utils/io/a;->R()J

    move-result-wide v3

    sub-long/2addr v3, v11

    add-long/2addr v1, v3

    invoke-virtual {v10, v1, v2}, Lio/ktor/utils/io/a;->v0(J)V

    .line 63
    :cond_26
    invoke-virtual {v8}, Lio/ktor/utils/io/a;->p0()V

    .line 64
    invoke-virtual {v8}, Lio/ktor/utils/io/a;->C0()Z

    throw v0

    :cond_27
    :goto_13
    if-eqz v5, :cond_28

    .line 65
    invoke-virtual {v14}, Lio/ktor/utils/io/a;->flush()V

    .line 66
    :cond_28
    iget-wide v0, v8, Lkotlin/jvm/internal/o0;->element:J

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    return-object v0

    :catchall_e
    move-exception v0

    move-object/from16 v14, p0

    .line 67
    :goto_14
    invoke-virtual {v14, v0}, Lio/ktor/utils/io/a;->c(Ljava/lang/Throwable;)Z

    .line 68
    throw v0
.end method

.method public final K()Lio/ktor/utils/io/internal/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public Q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/ktor/utils/io/a;->totalBytesRead:J

    return-wide v0
.end method

.method public R()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/ktor/utils/io/a;->totalBytesWritten:J

    return-wide v0
.end method

.method public T()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public a(Lkotlinx/coroutines/b2;)V
    .locals 9
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "job"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lio/ktor/utils/io/a;->attachedJob:Lkotlinx/coroutines/b2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lio/ktor/utils/io/a;->attachedJob:Lkotlinx/coroutines/b2;

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    .line 20
    new-instance v6, Lio/ktor/utils/io/a$b;

    .line 21
    .line 22
    .line 23
    invoke-direct {v6, p0}, Lio/ktor/utils/io/a$b;-><init>(Lio/ktor/utils/io/a;)V

    .line 24
    const/4 v7, 0x2

    .line 25
    const/4 v8, 0x0

    .line 26
    move-object v3, p1

    .line 27
    .line 28
    .line 29
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/b2$a;->d(Lkotlinx/coroutines/b2;ZZLe8/l;ILjava/lang/Object;)Lkotlinx/coroutines/g1;

    .line 30
    return-void
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lio/ktor/utils/io/internal/c;->Companion:Lio/ktor/utils/io/internal/c$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c$a;->a()Lio/ktor/utils/io/internal/c;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    new-instance v0, Lio/ktor/utils/io/internal/c;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Lio/ktor/utils/io/internal/c;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget-object v2, v2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 32
    .line 33
    sget-object v2, Lio/ktor/utils/io/a;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    .line 37
    invoke-static {v2, p0, v3, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    return v1

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v0, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-object v0, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/i;->g()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-direct {p0, p1}, Lio/ktor/utils/io/a;->q0(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    sget-object v1, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 77
    .line 78
    if-ne v0, v1, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->L(Lio/ktor/utils/io/internal/d;)V

    .line 86
    :cond_5
    const/4 v0, 0x1

    .line 87
    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    iget-object v1, p0, Lio/ktor/utils/io/a;->attachedJob:Lkotlinx/coroutines/b2;

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v3, v0, v3}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 96
    .line 97
    :cond_6
    iget-object v1, p0, Lio/ktor/utils/io/a;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/b;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/b;->d(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    iget-object v1, p0, Lio/ktor/utils/io/a;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/b;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/b;->d(Ljava/lang/Throwable;)V

    .line 106
    return v0

    .line 107
    .line 108
    :cond_7
    iget-object p1, p0, Lio/ktor/utils/io/a;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/b;

    .line 109
    .line 110
    new-instance v1, Lio/ktor/utils/io/p;

    .line 111
    .line 112
    const-string v2, "Byte channel was closed"

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, v2}, Lio/ktor/utils/io/p;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lio/ktor/utils/io/internal/b;->d(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    iget-object p1, p0, Lio/ktor/utils/io/a;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/b;

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    iget-object v1, v1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/i;->e()Z

    .line 130
    move-result v1

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v1}, Lio/ktor/utils/io/internal/b;->c(Ljava/lang/Object;)V

    .line 138
    return v0
.end method

.method public d(Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/a;->J0(Lio/ktor/utils/io/a;Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 5
    .line 6
    const-string v0, "Channel has been cancelled"

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/a;->c(Ljava/lang/Throwable;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 7
    .line 8
    iget v0, v0, Lio/ktor/utils/io/internal/i;->_availableForRead$internal:I

    .line 9
    return v0
.end method

.method public flush()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->M(I)V

    .line 5
    return-void
.end method

.method public g(Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/a;->a0(Lio/ktor/utils/io/a;Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/utils/io/a;->autoFlush:Z

    return v0
.end method

.method public i(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lr7/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->f0(Lio/ktor/utils/io/a;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->b()Ljava/lang/Throwable;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public k([BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->b0(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le8/l<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/a;->W(Lio/ktor/utils/io/a;ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m([BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/a;->L0(Lio/ktor/utils/io/a;[BIILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m0()Lio/ktor/utils/io/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/a;->n0(Lio/ktor/utils/io/a;Lio/ktor/utils/io/internal/d;)Lio/ktor/utils/io/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    :cond_1
    return-object v0
.end method

.method public n(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lr7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/a;->K0(Lio/ktor/utils/io/a;Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final p0()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/a;->_state:Ljava/lang/Object;

    .line 4
    move-object v2, v1

    .line 5
    .line 6
    check-cast v2, Lio/ktor/utils/io/internal/g;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/g;->f()Lio/ktor/utils/io/internal/g;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    instance-of v3, v2, Lio/ktor/utils/io/internal/g$b;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v2, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/i;->g()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    sget-object v0, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 25
    move-object v4, v2

    .line 26
    move-object v2, v0

    .line 27
    move-object v0, v4

    .line 28
    .line 29
    :cond_1
    sget-object v3, Lio/ktor/utils/io/a;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    sget-object v1, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 38
    .line 39
    if-ne v2, v1, :cond_2

    .line 40
    .line 41
    check-cast v0, Lio/ktor/utils/io/internal/g$b;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/g$b;->g()Lio/ktor/utils/io/internal/g$c;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->k0(Lio/ktor/utils/io/internal/g$c;)V

    .line 51
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "ByteBufferChannel("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, ", "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lio/ktor/utils/io/a;->P()Lio/ktor/utils/io/internal/g;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const/16 v1, 0x29

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public u0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/ktor/utils/io/a;->totalBytesRead:J

    return-void
.end method

.method public v0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/ktor/utils/io/a;->totalBytesWritten:J

    return-void
.end method

.method public final x0()Ljava/nio/ByteBuffer;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->S()Lkotlin/coroutines/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_d

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v0, v1

    .line 9
    .line 10
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/a;->_state:Ljava/lang/Object;

    .line 11
    move-object v3, v2

    .line 12
    .line 13
    check-cast v3, Lio/ktor/utils/io/internal/g;

    .line 14
    .line 15
    iget-object v4, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->k0(Lio/ktor/utils/io/internal/g$c;)V

    .line 23
    :cond_1
    return-object v1

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    if-eqz v4, :cond_4

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->k0(Lio/ktor/utils/io/internal/g$c;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 49
    .line 50
    new-instance v0, Lw7/i;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 54
    throw v0

    .line 55
    .line 56
    :cond_4
    sget-object v4, Lio/ktor/utils/io/internal/g$a;->INSTANCE:Lio/ktor/utils/io/internal/g$a;

    .line 57
    .line 58
    if-ne v3, v4, :cond_6

    .line 59
    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lio/ktor/utils/io/a;->U()Lio/ktor/utils/io/internal/g$c;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    :cond_5
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/g$c;->l()Lio/ktor/utils/io/internal/g$g;

    .line 68
    move-result-object v5

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_6
    sget-object v5, Lio/ktor/utils/io/internal/g$f;->INSTANCE:Lio/ktor/utils/io/internal/g$f;

    .line 72
    .line 73
    if-ne v3, v5, :cond_9

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->k0(Lio/ktor/utils/io/internal/g$c;)V

    .line 79
    .line 80
    :cond_7
    iget-object v0, p0, Lio/ktor/utils/io/a;->joining:Lio/ktor/utils/io/internal/d;

    .line 81
    .line 82
    if-eqz v0, :cond_8

    .line 83
    return-object v1

    .line 84
    .line 85
    .line 86
    :cond_8
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 98
    .line 99
    new-instance v0, Lw7/i;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 103
    throw v0

    .line 104
    .line 105
    .line 106
    :cond_9
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/g;->d()Lio/ktor/utils/io/internal/g;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    :goto_0
    sget-object v6, Lio/ktor/utils/io/a;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 110
    .line 111
    .line 112
    invoke-static {v6, p0, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    move-result v2

    .line 114
    .line 115
    if-eqz v2, :cond_0

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    if-nez v2, :cond_c

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lio/ktor/utils/io/internal/g;->b()Ljava/nio/ByteBuffer;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    if-eqz v0, :cond_b

    .line 128
    .line 129
    if-nez v3, :cond_a

    .line 130
    .line 131
    const-string v3, "old"

    .line 132
    .line 133
    .line 134
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 135
    goto :goto_1

    .line 136
    :cond_a
    move-object v1, v3

    .line 137
    .line 138
    :goto_1
    if-eq v1, v4, :cond_b

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v0}, Lio/ktor/utils/io/a;->k0(Lio/ktor/utils/io/internal/g$c;)V

    .line 142
    .line 143
    :cond_b
    iget v0, p0, Lio/ktor/utils/io/a;->writePosition:I

    .line 144
    .line 145
    iget-object v1, v5, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 146
    .line 147
    iget v1, v1, Lio/ktor/utils/io/internal/i;->_availableForWrite$internal:I

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, v2, v0, v1}, Lio/ktor/utils/io/a;->V(Ljava/nio/ByteBuffer;II)V

    .line 151
    return-object v2

    .line 152
    .line 153
    .line 154
    :cond_c
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->p0()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lio/ktor/utils/io/a;->C0()Z

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lio/ktor/utils/io/a;->N()Lio/ktor/utils/io/internal/c;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 172
    .line 173
    new-instance v0, Lw7/i;

    .line 174
    .line 175
    .line 176
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 177
    throw v0

    .line 178
    .line 179
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    const-string v3, "Write operation is already in progress: "

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 200
    throw v1
.end method
