# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "apasswd", id: false, force: :cascade do |t|
    t.integer "NODEID",      limit: 8,   null: false
    t.integer "PWDSEQNUM",   limit: 2,   null: false
    t.string  "PWDAUTHCD",   limit: 255
    t.string  "PWDLOGINUSE", limit: 255
    t.string  "PWDPASSWD",   limit: 255, null: false
    t.string  "PWDPTYPE",    limit: 100, null: false
  end

  create_table "approval", force: :cascade do |t|
    t.date     "app_date"
    t.string   "app_id",       limit: 50
    t.integer  "app_level",    limit: 4
    t.string   "app_position", limit: 255
    t.string   "delegateto",   limit: 255
    t.integer  "doc_no",       limit: 4
    t.datetime "expiry_date"
    t.date     "rej_date"
  end

  create_table "audel", primary_key: "AUDID", force: :cascade do |t|
    t.date    "AUENDDT"
    t.integer "AUNODEID",   limit: 8,   null: false
    t.string  "AUREMARKS",  limit: 255
    t.date    "AUSTARTDT"
    t.integer "AUTOUSERID", limit: 8,   null: false
  end

  add_index "audel", ["AUDID"], name: "AUDID", unique: true, using: :btree

  create_table "augroup", primary_key: "NODEID", force: :cascade do |t|
    t.string "AUGNAME", limit: 255, null: false
  end

  create_table "auser", id: false, force: :cascade do |t|
    t.string  "AUSERNAME",    limit: 255, null: false
    t.integer "NODEID",       limit: 8,   null: false
    t.string  "AUBRANCH",     limit: 255
    t.string  "AUDEPT",       limit: 255
    t.string  "AUECODE",      limit: 255
    t.string  "AUEMAIL",      limit: 255
    t.string  "AUENO",        limit: 255
    t.string  "AUFNUM",       limit: 255
    t.string  "AUFUNAME",     limit: 255
    t.string  "AUHALTLOG",    limit: 255
    t.integer "AUINSTANT",    limit: 2
    t.integer "AULOGATM",     limit: 2
    t.string  "AUPLANT",      limit: 100
    t.string  "AUPNUM",       limit: 255
    t.string  "AUPOS",        limit: 255
    t.integer "AUPROMPTPASS", limit: 2
    t.boolean "AURESET"
    t.date    "AUSEREFFDT"
    t.date    "AUSERRESDT"
    t.string  "AUSERTYPE",    limit: 255, null: false
    t.string  "AUSTATE",      limit: 255, null: false
  end

  create_table "auwidgetsec", id: false, force: :cascade do |t|
    t.integer "AUID",   limit: 8, null: false
    t.integer "WID",    limit: 8, null: false
    t.integer "SEC",    limit: 4, null: false
    t.integer "AMSSEC", limit: 4, null: false
    t.integer "NODEID", limit: 8, null: false
  end

  create_table "checkin", primary_key: "FILEID", force: :cascade do |t|
    t.integer "USERID",  limit: 8,   null: false
    t.string  "UNAME",   limit: 255, null: false
    t.date    "CDATE",               null: false
    t.time    "CTIME",               null: false
    t.integer "GRAPHID", limit: 8,   null: false
  end

  create_table "converr", primary_key: "ID", force: :cascade do |t|
    t.string   "CONVTYPE", limit: 255, null: false
    t.string   "ERRORMSG", limit: 255, null: false
    t.datetime "INSDATE",              null: false
    t.integer  "NODEID",   limit: 8,   null: false
    t.integer  "PRIORITY", limit: 4,   null: false
  end

  create_table "convqueue", primary_key: "NODEID", force: :cascade do |t|
    t.string   "CONVTYPE", limit: 255, null: false
    t.string   "FEXT",     limit: 255, null: false
    t.string   "FFULPATH", limit: 255, null: false
    t.datetime "INSDATE",              null: false
    t.integer  "PRIORITY", limit: 4,   null: false
  end

  create_table "customer", primary_key: "CID", force: :cascade do |t|
    t.string "CADDR1",    limit: 255
    t.string "CADDR2",    limit: 255
    t.string "CCITY",     limit: 255
    t.string "CCONTACT",  limit: 255
    t.string "CCOUNTRY",  limit: 255
    t.string "CFAX",      limit: 255
    t.string "CNAME",     limit: 255, null: false
    t.string "CPOSTCODE", limit: 255
    t.string "CSTATE",    limit: 255
    t.string "CWEBSITE",  limit: 255
  end

  create_table "custpic", primary_key: "CPID", force: :cascade do |t|
    t.integer "CID",     limit: 8,   null: false
    t.string  "CPEMAIL", limit: 255, null: false
    t.string  "CPPIC",   limit: 255, null: false
  end

  create_table "document", primary_key: "auto_id", force: :cascade do |t|
    t.datetime "date_init"
    t.string   "dep_id",     limit: 255
    t.string   "doc_no",     limit: 255
    t.string   "doc_title",  limit: 255
    t.string   "doc_type",   limit: 255
    t.datetime "eff_date"
    t.string   "initiator",  limit: 255
    t.string   "iso_audit",  limit: 255
    t.string   "iso_ref",    limit: 255
    t.string   "module",     limit: 255
    t.datetime "obs_date"
    t.string   "originator", limit: 255
    t.string   "plant_id",   limit: 255
    t.string   "project",    limit: 255
    t.string   "rev_code",   limit: 255
    t.integer  "running_no", limit: 4,   null: false
    t.integer  "serial_no",  limit: 4,   null: false
    t.string   "status",     limit: 255
  end

  create_table "documentlog", primary_key: "auto_id", force: :cascade do |t|
    t.datetime "date_init"
    t.string   "dep_id",     limit: 255
    t.string   "doc_no",     limit: 255
    t.string   "doc_title",  limit: 255
    t.string   "doc_type",   limit: 255
    t.datetime "eff_date"
    t.string   "initiator",  limit: 255
    t.string   "iso_audit",  limit: 255
    t.string   "iso_ref",    limit: 255
    t.string   "module",     limit: 255
    t.datetime "obs_date"
    t.string   "originator", limit: 255
    t.string   "plant_id",   limit: 255
    t.string   "project",    limit: 255
    t.string   "rev_code",   limit: 255
    t.integer  "running_no", limit: 4,   null: false
    t.integer  "serial_no",  limit: 4,   null: false
    t.string   "status",     limit: 255
  end

  create_table "ereqdetail", primary_key: "ERDID", force: :cascade do |t|
    t.text    "ERDDESCRIPTION", limit: 4294967295
    t.string  "ERDPAGE",        limit: 255
    t.text    "ERDREASON",      limit: 4294967295
    t.integer "NODEID",         limit: 8,          null: false
  end

  create_table "erequest", primary_key: "NODEID", force: :cascade do |t|
    t.string   "ERDEPARTMENT",     limit: 255, null: false
    t.integer  "ERDEPARTMENTID",   limit: 8,   null: false
    t.string   "ERDOCREFNO",       limit: 255, null: false
    t.string   "ERDOCTITLE",       limit: 255, null: false
    t.datetime "EREFFDATE",                    null: false
    t.string   "ERPRIMARYAPP",     limit: 255, null: false
    t.integer  "ERPRIMARYAPPID",   limit: 8,   null: false
    t.integer  "ERPRXID",          limit: 8,   null: false
    t.string   "ERQMRAPP",         limit: 255, null: false
    t.integer  "ERQMRAPPID",       limit: 8,   null: false
    t.string   "ERQMRREMARK",      limit: 255
    t.string   "ERREQBY",          limit: 255, null: false
    t.datetime "ERREQDATE",                    null: false
    t.integer  "ERREQID",          limit: 8,   null: false
    t.string   "ERREV",            limit: 255
    t.string   "ERSECONDARYAPP",   limit: 255
    t.integer  "ERSECONDARYAPPID", limit: 8
    t.integer  "ERSTATUS",         limit: 4,   null: false
    t.string   "ERSTYPE",          limit: 255, null: false
    t.string   "ERTYPE",           limit: 255, null: false
  end

  create_table "filesec", id: false, force: :cascade do |t|
    t.integer "ACCESSID", limit: 8,   null: false
    t.integer "FILEID",   limit: 8,   null: false
    t.integer "FSECID",   limit: 8,   null: false
    t.integer "GRAPHID",  limit: 8,   null: false
    t.string  "FXACCESS", limit: 255
  end

  create_table "filext", primary_key: "FEXT", force: :cascade do |t|
  end

  create_table "filter", primary_key: "NODEID", force: :cascade do |t|
    t.string "WORD", limit: 255, null: false
  end

  create_table "fmedia", primary_key: "NODEID", force: :cascade do |t|
    t.string  "FDESC",    limit: 255
    t.string  "FEXT",     limit: 255, null: false
    t.string  "FFULPATH", limit: 255, null: false
    t.string  "FGNAME",   limit: 255, null: false
    t.string  "FONAME",   limit: 255, null: false
    t.string  "FREMARK",  limit: 255
    t.integer "FSIZE",    limit: 8,   null: false
    t.integer "FSTATUS",  limit: 4
    t.integer "FTYPE",    limit: 4
  end

  create_table "fmediainfo", primary_key: "NODEID", force: :cascade do |t|
    t.datetime "FMDATEEFF"
    t.datetime "FMDATEINIT",                  null: false
    t.datetime "FMDATEOBS"
    t.string   "FMDOCNAME",       limit: 255, null: false
    t.string   "FMISOREF",        limit: 255
    t.integer  "FMPRXID",         limit: 8
    t.string   "FMREFNO",         limit: 255, null: false
    t.integer  "FMSTATUS",        limit: 4,   null: false
    t.datetime "FMCALDUE"
    t.string   "FMCALFREQ",       limit: 255
    t.string   "FMCALIBTYPE",     limit: 255
    t.integer  "FMCALREMIND",     limit: 4
    t.string   "FMCATEGORY",      limit: 255
    t.string   "FMCERTNO",        limit: 255
    t.string   "FMCUSTOMER",      limit: 255
    t.datetime "FMDATEIMPLEMENT"
    t.datetime "FMDATEMOD"
    t.datetime "FMDATEPUBLISH"
    t.datetime "FMDATEPURCHASED"
    t.datetime "FMDATERECEIVED"
    t.datetime "FMDATEREVIEWED"
    t.datetime "FMDATEREVISION"
    t.string   "FMDEPARTMENT",    limit: 255, null: false
    t.string   "FMDOCNO",         limit: 255, null: false
    t.string   "FMDOCTITLE",      limit: 255, null: false
    t.string   "FMDRAWINGNO",     limit: 50
    t.string   "FMEQTYPE",        limit: 255
    t.integer  "FMGRAPHID",       limit: 8,   null: false
    t.string   "FMINITID",        limit: 255
    t.string   "FMINITNM",        limit: 255
    t.string   "FMLOCATION",      limit: 255
    t.string   "FMMODNO",         limit: 50
    t.string   "FMORIGINID",      limit: 255, null: false
    t.string   "FMORIGINNM",      limit: 255, null: false
    t.integer  "FMPAGENO",        limit: 4
    t.string   "FMPARTNO",        limit: 50
    t.string   "FMPLANT",         limit: 255, null: false
    t.string   "FMPROJECT",       limit: 255
    t.string   "FMREMARK",        limit: 255
    t.string   "FMSERIALNO",      limit: 255
    t.string   "FMVENDOR",        limit: 255
  end

  create_table "fmiso", primary_key: "FMISOID", force: :cascade do |t|
    t.integer "FMMDISOID", limit: 8, null: false
    t.integer "FMNODEID",  limit: 8, null: false
  end

  add_index "fmiso", ["FMNODEID"], name: "FK5D0825E644FA3BE", using: :btree

  create_table "fmpolicy", primary_key: "FMPID", force: :cascade do |t|
    t.boolean "FMPDOWNLOAD",           null: false
    t.boolean "FMPREVISE",             null: false
    t.integer "FMPUGID",     limit: 8, null: false
    t.integer "FMPUGTYPE",   limit: 4, null: false
    t.boolean "FMPVIEW",               null: false
    t.integer "NODEID",      limit: 8, null: false
  end

  add_index "fmpolicy", ["NODEID"], name: "FKAF2CC0B9F0C25817", using: :btree

  create_table "foldersec", id: false, force: :cascade do |t|
    t.integer "ACCESSID",  limit: 8, null: false
    t.integer "FOLDERID",  limit: 8, null: false
    t.integer "FSECID",    limit: 8, null: false
    t.integer "GRAPHID",   limit: 8, null: false
    t.integer "BINARYSEC", limit: 4
    t.integer "TIER",      limit: 4, null: false
  end

  create_table "frxcontainer", primary_key: "FRXNODEID", force: :cascade do |t|
    t.string "FRXNAME",   limit: 255, null: false
    t.string "FRXPREFIX", limit: 255, null: false
    t.string "FRXREMARK", limit: 255
    t.string "FRXTHEME",  limit: 255, null: false
  end

  create_table "frxebinary", primary_key: "FRXID", force: :cascade do |t|
    t.string "FRXEMIMETYPE", limit: 255,        null: false
    t.binary "FRXEVALUE",    limit: 4294967295, null: false
  end

  create_table "frxecell", id: false, force: :cascade do |t|
    t.integer "FRXESEQ",    limit: 4,   null: false
    t.integer "FRXID",      limit: 8,   null: false
    t.string  "FRXECOL",    limit: 255, null: false
    t.integer "FRXEFORMAT", limit: 4,   null: false
    t.string  "FRXEROW",    limit: 255, null: false
    t.string  "FRXEVAL",    limit: 255
  end

  create_table "frxelement", primary_key: "FRXID", force: :cascade do |t|
    t.string  "FRXCONNECTOR", limit: 255,        null: false
    t.boolean "FRXENABLE",                       null: false
    t.integer "FRXFORMAT",    limit: 4,          null: false
    t.integer "FRXHEIGHT",    limit: 4,          null: false
    t.string  "FRXLABEL",     limit: 255
    t.integer "FRXMAXLENGTH", limit: 4,          null: false
    t.integer "FRXMINLENGTH", limit: 4,          null: false
    t.integer "FRXNODEID",    limit: 8,          null: false
    t.boolean "FRXOPTIONAL",                     null: false
    t.integer "FRXORDER",     limit: 4,          null: false
    t.integer "FRXSIZE",      limit: 4
    t.text    "FRXSQL",       limit: 4294967295, null: false
    t.text    "FRXSTYLE",     limit: 4294967295
    t.integer "FRXTYPE",      limit: 4,          null: false
    t.string  "FRXVALUE",     limit: 255
    t.string  "FRXVAR",       limit: 255,        null: false
    t.integer "FRXWIDTH",     limit: 4,          null: false
  end

  create_table "frxeoptions", id: false, force: :cascade do |t|
    t.integer "FRXESEQ",    limit: 4,   null: false
    t.integer "FRXID",      limit: 8,   null: false
    t.boolean "FRXCHECKED",             null: false
    t.string  "FRXEVALUE",  limit: 255, null: false
  end

  create_table "functionsec", id: false, force: :cascade do |t|
    t.integer "FSGRAPHID",   limit: 8,                  null: false
    t.integer "FSNODEID",    limit: 8,                  null: false
    t.boolean "FSCROSS",                                null: false
    t.boolean "FSCURRENT",                              null: false
    t.boolean "FSCUTPASTE",                             null: false
    t.boolean "FSDELETE",                               null: false
    t.boolean "FSDOWNLOAD",                             null: false
    t.boolean "FSEDIT",                                 null: false
    t.boolean "FSFOLDER",                               null: false
    t.boolean "FSHISTORY",                              null: false
    t.boolean "FSINDEX",                                null: false
    t.boolean "FSLOG",                                  null: false
    t.boolean "FSNEW",                                  null: false
    t.boolean "FSOBSOLETE",                             null: false
    t.boolean "FSPENDING",                              null: false
    t.boolean "FSREPLACE",                              null: false
    t.boolean "FSREPORT",                               null: false
    t.boolean "FSSEARCH",                               null: false
    t.boolean "FSSECURITY",                             null: false
    t.boolean "FSSUBSCRIBE",                            null: false
    t.string  "FSTYPE",      limit: 10,                 null: false
    t.boolean "FSVERSION",                              null: false
    t.boolean "FSPRINT",                default: false, null: false
    t.integer "FSMODTYPE",   limit: 4,                  null: false
  end

  create_table "fverinfo", primary_key: "NODEID", force: :cascade do |t|
    t.date    "ENDDATE"
    t.string  "REMARKS",   limit: 255
    t.date    "STARTDATE",             null: false
    t.string  "VERSION",   limit: 255, null: false
    t.integer "VERSTATE",  limit: 4,   null: false
    t.integer "PRXID",     limit: 8
  end

  create_table "graph", primary_key: "NODEID", force: :cascade do |t|
    t.string  "GRAPHDESC",   limit: 255
    t.boolean "GRAPHISREPO",             null: false
    t.string  "GRAPHMOD",    limit: 100
    t.string  "GRAPHTYPE",   limit: 100
  end

  create_table "graphuser", primary_key: "GUID", force: :cascade do |t|
    t.integer "GUNODEID", limit: 8, null: false
    t.integer "GUUSERID", limit: 8, null: false
  end

  create_table "hprxattch", primary_key: "NODEID", force: :cascade do |t|
    t.string  "HTYPE",     limit: 255, null: false
    t.string  "LABEL",     limit: 255, null: false
    t.integer "PROCESSID", limit: 8,   null: false
    t.string  "REMARKS",   limit: 255
  end

  create_table "hprxattchsec", id: false, force: :cascade do |t|
    t.integer "ATTCHID",   limit: 8, null: false
    t.integer "NODEID",    limit: 8, null: false
    t.integer "PROCESSID", limit: 4, null: false
    t.integer "SEC",       limit: 4, null: false
  end

  create_table "hprxendrule", id: false, force: :cascade do |t|
    t.integer "NODEID",    limit: 8,   null: false
    t.integer "SEQ",       limit: 4,   null: false
    t.string  "EXPRULE",   limit: 255
    t.integer "PROCESSID", limit: 8,   null: false
    t.string  "STATUS",    limit: 255
  end

  create_table "hprxlink", id: false, force: :cascade do |t|
    t.integer "CHILDID",   limit: 8, null: false
    t.integer "PARENTID",  limit: 8, null: false
    t.integer "PROCESSID", limit: 8, null: false
  end

  create_table "hprxlog", id: false, force: :cascade do |t|
    t.integer  "NODEID",      limit: 8,   null: false
    t.integer  "SEQ",         limit: 4,   null: false
    t.boolean  "ISQMRREMARK",             null: false
    t.string   "LOG",         limit: 255, null: false
    t.string   "LOGACTION",   limit: 255, null: false
    t.datetime "LOGDATE",                 null: false
    t.integer  "USERID",      limit: 8,   null: false
  end

  create_table "hprxmark", id: false, force: :cascade do |t|
    t.integer "NODEID", limit: 8, null: false
    t.integer "SEQ",    limit: 4, null: false
    t.integer "MARKID", limit: 8, null: false
  end

  create_table "hprxprocess", primary_key: "NODEID", force: :cascade do |t|
    t.integer  "GRAPHID",     limit: 8,                            null: false
    t.datetime "PARCHIVE",                                         null: false
    t.string   "PDESC",       limit: 255
    t.datetime "PEND"
    t.string   "PNAME",       limit: 255,                          null: false
    t.decimal  "PROOTINFOID",             precision: 19, scale: 2
    t.datetime "PSTART",                                           null: false
    t.string   "PSTATUS",     limit: 255,                          null: false
    t.string   "PTYPE",       limit: 255,                          null: false
    t.integer  "RUNNO",       limit: 4,                            null: false
    t.integer  "STARTBYID",   limit: 8,                            null: false
    t.decimal  "VERSIONID",               precision: 19, scale: 2
  end

  create_table "hprxremarks", primary_key: "HPRID", force: :cascade do |t|
    t.datetime "HPRDATETIME",             null: false
    t.integer  "HPRNODEID",   limit: 8,   null: false
    t.string   "HPRTEXT",     limit: 255, null: false
    t.integer  "HPRUSERID",   limit: 8,   null: false
  end

  create_table "hprxrule", primary_key: "ID", force: :cascade do |t|
    t.string  "DESTINATION", limit: 255, null: false
    t.string  "EXPRULE",     limit: 255, null: false
    t.integer "NODEID",      limit: 8,   null: false
  end

  create_table "hprxrulestation", id: false, force: :cascade do |t|
    t.integer "NODEID",    limit: 8, null: false
    t.integer "RULEID",    limit: 8, null: false
    t.integer "PROCESSID", limit: 8, null: false
  end

  create_table "hprxstation", primary_key: "NODEID", force: :cascade do |t|
    t.date    "ATTACHDT"
    t.decimal "ATTACHID",                precision: 19, scale: 2
    t.date    "PROCESSDT"
    t.decimal "PROCESSID",               precision: 19, scale: 2
    t.string  "STATIONDESC", limit: 255
    t.string  "STATIONRMK",  limit: 255
    t.string  "STATIONTYPE", limit: 255
    t.integer "TIMEOUTDAY",  limit: 4
    t.integer "XPOS",        limit: 4
    t.integer "YPOS",        limit: 4
  end

  create_table "hprxtask", primary_key: "TASKID", force: :cascade do |t|
    t.integer  "PROCESSID", limit: 8,   null: false
    t.integer  "STATIONID", limit: 8,   null: false
    t.string   "TASKTYPE",  limit: 255, null: false
    t.datetime "TEND"
    t.integer  "TMASKID",   limit: 8,   null: false
    t.datetime "TOPEN"
    t.datetime "TSTART",                null: false
    t.string   "TSTATUS",   limit: 255
    t.integer  "USERID",    limit: 8,   null: false
  end

  create_table "imageinfo", id: false, force: :cascade do |t|
    t.integer "FSEQ",      limit: 4,   null: false
    t.integer "NODEID",    limit: 8,   null: false
    t.string  "FEXT",      limit: 255, null: false
    t.string  "FFULLPATH", limit: 255, null: false
  end

  create_table "iprxattch", primary_key: "NODEID", force: :cascade do |t|
    t.string  "HTYPE",     limit: 255, null: false
    t.string  "LABEL",     limit: 255, null: false
    t.integer "PROCESSID", limit: 8,   null: false
    t.string  "REMARKS",   limit: 255
  end

  create_table "iprxattchsec", id: false, force: :cascade do |t|
    t.integer "ATTCHID",   limit: 8, null: false
    t.integer "NODEID",    limit: 8, null: false
    t.integer "PROCESSID", limit: 4, null: false
    t.integer "SEC",       limit: 4, null: false
  end

  create_table "iprxendrule", id: false, force: :cascade do |t|
    t.integer "NODEID",    limit: 8,   null: false
    t.integer "SEQ",       limit: 4,   null: false
    t.string  "EXPRULE",   limit: 255
    t.integer "PROCESSID", limit: 8,   null: false
    t.string  "STATUS",    limit: 255
  end

  create_table "iprxlink", id: false, force: :cascade do |t|
    t.integer "CHILDID",   limit: 8, null: false
    t.integer "PARENTID",  limit: 8, null: false
    t.integer "PROCESSID", limit: 8, null: false
  end

  create_table "iprxlog", id: false, force: :cascade do |t|
    t.integer  "NODEID",      limit: 8,   null: false
    t.integer  "SEQ",         limit: 4,   null: false
    t.boolean  "ISQMRREMARK",             null: false
    t.string   "LOG",         limit: 255, null: false
    t.string   "LOGACTION",   limit: 255, null: false
    t.datetime "LOGDATE",                 null: false
    t.integer  "USERID",      limit: 8,   null: false
  end

  create_table "iprxmark", id: false, force: :cascade do |t|
    t.integer "NODEID", limit: 8, null: false
    t.integer "SEQ",    limit: 4, null: false
    t.integer "MARKID", limit: 8, null: false
  end

  create_table "iprxntfevent", primary_key: "NODEID", force: :cascade do |t|
    t.boolean "IPRXNEBSTART",              null: false
    t.integer "IPRXNEBSTARTID",  limit: 8
    t.boolean "IPRXNECMP",                 null: false
    t.integer "IPRXNECMPID",     limit: 8
    t.boolean "IPRXNEPUBLISH",             null: false
    t.integer "IPRXNEPUBLISHID", limit: 8
    t.boolean "IPRXNERCV",                 null: false
    t.integer "IPRXNERCVID",     limit: 8
    t.boolean "IPRXNEREJECT",              null: false
    t.integer "IPRXNEREJECTID",  limit: 8
  end

  create_table "iprxprocess", primary_key: "NODEID", force: :cascade do |t|
    t.integer  "GRAPHID",     limit: 8,                            null: false
    t.string   "PDESC",       limit: 255
    t.datetime "PEND"
    t.string   "PNAME",       limit: 255,                          null: false
    t.decimal  "PROOTINFOID",             precision: 19, scale: 2
    t.datetime "PSTART",                                           null: false
    t.string   "PSTATUS",     limit: 255,                          null: false
    t.string   "PTYPE",       limit: 255,                          null: false
    t.integer  "RUNNO",       limit: 4,                            null: false
    t.integer  "STARTBYID",   limit: 8,                            null: false
    t.decimal  "VERSIONID",               precision: 19, scale: 2
  end

  create_table "iprxremarks", primary_key: "IPRID", force: :cascade do |t|
    t.datetime "IPRDATETIME",             null: false
    t.integer  "IPRNODEID",   limit: 8,   null: false
    t.string   "IPRTEXT",     limit: 255, null: false
    t.integer  "IPRUSERID",   limit: 8,   null: false
  end

  create_table "iprxrule", primary_key: "ID", force: :cascade do |t|
    t.string  "DESTINATION", limit: 255, null: false
    t.string  "EXPRULE",     limit: 255, null: false
    t.integer "NODEID",      limit: 8,   null: false
  end

  create_table "iprxrulestation", id: false, force: :cascade do |t|
    t.integer "NODEID",    limit: 8, null: false
    t.integer "RULEID",    limit: 8, null: false
    t.integer "PROCESSID", limit: 8, null: false
  end

  create_table "iprxstation", primary_key: "NODEID", force: :cascade do |t|
    t.decimal "ATTACHID",                precision: 19, scale: 2
    t.decimal "PROCESSID",               precision: 19, scale: 2
    t.string  "STATIONDESC", limit: 255
    t.string  "STATIONRMK",  limit: 255
    t.string  "STATIONTYPE", limit: 255
    t.integer "TIMEOUTDAY",  limit: 4
    t.integer "XPOS",        limit: 4
    t.integer "YPOS",        limit: 4
  end

  create_table "iprxtask", primary_key: "TASKID", force: :cascade do |t|
    t.integer  "PROCESSID",   limit: 8,   null: false
    t.integer  "STATIONID",   limit: 8,   null: false
    t.string   "TASKTYPE",    limit: 255, null: false
    t.datetime "TEND"
    t.integer  "TMASKID",     limit: 8,   null: false
    t.datetime "TOPEN"
    t.datetime "TSTART",                  null: false
    t.string   "TSTATUS",     limit: 255
    t.integer  "USERID",      limit: 8,   null: false
    t.integer  "DELEGATORID", limit: 8
  end

  create_table "keychain", id: false, force: :cascade do |t|
    t.integer "KCID", limit: 8, null: false
    t.integer "WID",  limit: 8, null: false
    t.integer "SEC",  limit: 4, null: false
  end

  create_table "link", force: :cascade do |t|
    t.string "doc_no",   limit: 255
    t.text   "filedesc", limit: 4294967295
    t.string "filename", limit: 255
    t.text   "filetype", limit: 4294967295
    t.text   "path",     limit: 4294967295
    t.string "qty",      limit: 255
  end

  create_table "link_dis", force: :cascade do |t|
    t.string "distribution", limit: 255
    t.string "doc_no",       limit: 255
    t.string "filename",     limit: 255
    t.string "filetype",     limit: 255
  end

  create_table "linklog", force: :cascade do |t|
    t.string "doc_no",   limit: 255
    t.text   "filedesc", limit: 4294967295
    t.string "filename", limit: 255
    t.text   "filetype", limit: 4294967295
    t.text   "path",     limit: 4294967295
    t.string "qty",      limit: 255
  end

  create_table "locktbl", primary_key: "LOCKID", force: :cascade do |t|
    t.string "LOCKBY", limit: 255
    t.date   "LOCKDT"
    t.time   "LOCKTM"
  end

  create_table "logging", primary_key: "logID", force: :cascade do |t|
    t.string  "logCODE",    limit: 255, null: false
    t.string  "logCOMMENT", limit: 255, null: false
    t.date    "logDATE",                null: false
    t.integer "logObjID",   limit: 8
    t.time    "logTIME",                null: false
    t.integer "logUID",     limit: 8,   null: false
    t.string  "logUNAME",   limit: 255, null: false
  end

  create_table "marquee", primary_key: "marqueeseq", force: :cascade do |t|
    t.string "marqueeflag", limit: 1,   null: false
    t.string "marqueetext", limit: 255, null: false
  end

  create_table "mdcalibtype", primary_key: "MDCTID", force: :cascade do |t|
    t.string  "MDCTNAME",   limit: 100, null: false
    t.string  "MDCTPREFIX", limit: 10
    t.boolean "MDCTSTATUS",             null: false
  end

  create_table "mdcategory", primary_key: "MDCID", force: :cascade do |t|
    t.string  "MDCNAME",   limit: 100, null: false
    t.string  "MDCPREFIX", limit: 10
    t.boolean "MDCSTATUS",             null: false
  end

  create_table "mdcustomer", primary_key: "MDCTID", force: :cascade do |t|
    t.string  "MDCTNAME",   limit: 100, null: false
    t.string  "MDCTPREFIX", limit: 10
    t.boolean "MDCTSTATUS",             null: false
  end

  create_table "mddepartment", primary_key: "MDDID", force: :cascade do |t|
    t.string  "MDDNAME",   limit: 100, null: false
    t.string  "MDDPREFIX", limit: 10,  null: false
    t.boolean "MDDSTATUS",             null: false
  end

  create_table "mddoctype", primary_key: "MDDTID", force: :cascade do |t|
    t.string "MDDTNAME",   limit: 255, null: false
    t.string "MDDTPREFIX", limit: 255, null: false
  end

  create_table "mdequiptype", primary_key: "MDETID", force: :cascade do |t|
    t.string  "MDETNAME",   limit: 100, null: false
    t.string  "MDETPREFIX", limit: 10
    t.boolean "MDETSTATUS",             null: false
  end

  create_table "mdisoclause", primary_key: "MDIID", force: :cascade do |t|
    t.string  "MDINAME",   limit: 255, null: false
    t.string  "MDIPREFIX", limit: 255, null: false
    t.boolean "MDISTATUS",             null: false
  end

  create_table "mdmodule", primary_key: "MDMID", force: :cascade do |t|
    t.string "MDMNAME",   limit: 255, null: false
    t.string "MDMPREFIX", limit: 255, null: false
  end

  create_table "mdplant", primary_key: "MDPID", force: :cascade do |t|
    t.string  "MDPNAME",   limit: 100, null: false
    t.string  "MDPPREFIX", limit: 10,  null: false
    t.boolean "MDPSTATUS",             null: false
  end

  create_table "mdproject", primary_key: "MDPRID", force: :cascade do |t|
    t.string  "MDPRNAME",   limit: 255, null: false
    t.string  "MDPRPREFIX", limit: 255, null: false
    t.boolean "MDPRSTATUS",             null: false
  end

  create_table "mdprojectlist", primary_key: "MDPRLID", force: :cascade do |t|
    t.integer "MDPRLPRID", limit: 8, null: false
    t.integer "MDPRLUID",  limit: 8, null: false
  end

  create_table "modlattr", id: false, force: :cascade do |t|
    t.string  "ATMODNM", limit: 255, null: false
    t.integer "ATSEQ",   limit: 2,   null: false
    t.string  "ATVAL",   limit: 255, null: false
  end

  create_table "module", primary_key: "MODID", force: :cascade do |t|
    t.string  "MODDESC",   limit: 255, null: false
    t.boolean "MODFRAME",              null: false
    t.string  "MODICON",   limit: 255, null: false
    t.string  "MODNAME",   limit: 255, null: false
    t.boolean "MODSTATUS",             null: false
    t.string  "MODURL",    limit: 255, null: false
  end

  create_table "mprxstation", id: false, force: :cascade do |t|
    t.integer "MPRXAPPID",    limit: 8,                            null: false
    t.integer "NODEID",       limit: 8,                            null: false
    t.date    "MPRXAPPDATE"
    t.string  "MPRXAPPUDESC", limit: 255
    t.decimal "MPRXAPPUID",               precision: 19, scale: 2
  end

  create_table "nhist", primary_key: "NHID", force: :cascade do |t|
    t.string  "NHCODE", limit: 255
    t.string  "NHCOMM", limit: 255
    t.date    "NHDATE"
    t.time    "NHTIME"
    t.decimal "NHUID",              precision: 19, scale: 2
    t.integer "NODEID", limit: 8,                            null: false
  end

  create_table "node", primary_key: "NODEID", force: :cascade do |t|
    t.decimal "NODEBITS",              precision: 19, scale: 2
    t.string  "NODEDESC",  limit: 255
    t.date    "NODEDT",                                         null: false
    t.decimal "NODEGID",               precision: 19, scale: 2
    t.string  "NODEHASH",  limit: 255
    t.integer "NODELEVEL", limit: 2
    t.string  "NODETYPE",  limit: 255
    t.decimal "NODEUID",               precision: 19, scale: 2
  end

  create_table "nodeattr", id: false, force: :cascade do |t|
    t.string  "NAPARAM", limit: 255, null: false
    t.integer "NODEID",  limit: 8,   null: false
    t.string  "NAVALUE", limit: 255
  end

  create_table "nodelink", id: false, force: :cascade do |t|
    t.integer "LINKCNODEID", limit: 8,   null: false
    t.integer "LINKPNODEID", limit: 8,   null: false
    t.string  "LINKTYPE",    limit: 255
  end

  create_table "ntfevent", primary_key: "NODEID", force: :cascade do |t|
    t.string "NTFDESC",      limit: 255,   null: false
    t.binary "NTFSUBJECT",   limit: 65535
    t.binary "NTFTEMPLATE",  limit: 65535
    t.string "NTFTRANSPORT", limit: 255,   null: false
    t.string "NTFTYPE",      limit: 255,   null: false
  end

  create_table "ntfobj", id: false, force: :cascade do |t|
    t.integer "NTFNODEID", limit: 8, null: false
    t.integer "NTFOBJID",  limit: 8, null: false
  end

  create_table "ntfqlog", primary_key: "NTFQID", force: :cascade do |t|
    t.string   "NTFBCC",       limit: 255
    t.string   "NTFCC",        limit: 255
    t.integer  "NTFEVID",      limit: 8,     null: false
    t.datetime "NTFLOGDT",                   null: false
    t.string   "NTFLOGMSG",    limit: 255
    t.binary   "NTFMESSAGE",   limit: 65535, null: false
    t.integer  "NTFOBJID",     limit: 8,     null: false
    t.string   "NTFSTATUS",    limit: 255,   null: false
    t.binary   "NTFSUBJECT",   limit: 65535
    t.string   "NTFTO",        limit: 255
    t.string   "NTFTRANSPORT", limit: 255,   null: false
  end

  create_table "ntfqueue", primary_key: "NTFQID", force: :cascade do |t|
    t.integer "NTFEVID",      limit: 8,     null: false
    t.integer "NTFGRAPHID",   limit: 8,     null: false
    t.binary  "NTFMESSAGE",   limit: 65535, null: false
    t.integer "NTFOBJID",     limit: 8,     null: false
    t.binary  "NTFSUBJECT",   limit: 65535
    t.string  "NTFTO",        limit: 255
    t.string  "NTFTRANSPORT", limit: 255,   null: false
  end

  create_table "ntfug", id: false, force: :cascade do |t|
    t.integer "NTFNODEID",     limit: 8, null: false
    t.integer "NTFUGGRAPHID",  limit: 8, null: false
    t.integer "NTFUGID",       limit: 8, null: false
    t.integer "NTFUGSENDTYPE", limit: 4, null: false
  end

  create_table "pdfinfo", primary_key: "NODEID", force: :cascade do |t|
    t.string  "FEXT",      limit: 255, null: false
    t.string  "FFULLPATH", limit: 255, null: false
    t.integer "FSEQ",      limit: 4
  end

  create_table "pindex", id: false, force: :cascade do |t|
    t.integer "NODEID", limit: 8,   null: false
    t.string  "WORD",   limit: 255, null: false
  end

  create_table "prxaction", primary_key: "ACTION", force: :cascade do |t|
    t.boolean "STATUS", null: false
  end

  create_table "prxapprvlist", primary_key: "PRXALID", force: :cascade do |t|
    t.integer "PRXALGID", limit: 8, null: false
    t.integer "PRXALUID", limit: 8, null: false
  end

  create_table "prxattch", primary_key: "NODEID", force: :cascade do |t|
    t.string  "EXTENSIONS",   limit: 255
    t.boolean "ISPROPERTIES",             null: false
    t.boolean "ISSINGULAR",               null: false
    t.string  "LABEL",        limit: 255, null: false
    t.boolean "MANDATORY",                null: false
    t.string  "PARSEDESC",    limit: 255
    t.string  "REMARKS",      limit: 255, null: false
  end

  create_table "prxattchsec", id: false, force: :cascade do |t|
    t.integer "ATTCHID", limit: 8, null: false
    t.integer "NODEID",  limit: 8, null: false
    t.integer "SEC",     limit: 4, null: false
  end

  create_table "prxdlist", primary_key: "PRXDLID", force: :cascade do |t|
    t.integer "PRXDLGID",  limit: 8,   null: false
    t.string  "PRXDLNAME", limit: 255, null: false
  end

  create_table "prxdlistelem", primary_key: "PRXDLEID", force: :cascade do |t|
    t.integer "PRXDLEDLID", limit: 8, null: false
    t.integer "PRXDLEUID",  limit: 8, null: false
  end

  create_table "prxdoccon", primary_key: "PRXDCID", force: :cascade do |t|
    t.integer "PRXDCGID", limit: 8, null: false
    t.integer "PRXDCUID", limit: 8, null: false
  end

  create_table "prxendrule", id: false, force: :cascade do |t|
    t.integer "NODEID",    limit: 8,   null: false
    t.integer "SEQ",       limit: 4,   null: false
    t.string  "EXPRULE",   limit: 255
    t.integer "PROCESSID", limit: 8,   null: false
    t.string  "STATUS",    limit: 255
  end

  create_table "prxendstatus", primary_key: "ENDSTATUS", force: :cascade do |t|
  end

  create_table "prxevent", primary_key: "NODEID", force: :cascade do |t|
    t.integer "ISBATCH",   limit: 2
    t.string  "PATH",      limit: 255
    t.string  "PREFIX",    limit: 255
    t.string  "SEPERATOR", limit: 255
    t.string  "TYPE",      limit: 255, null: false
  end

  create_table "prxexception", id: false, force: :cascade do |t|
    t.integer "NODEID",    limit: 8,   null: false
    t.integer "SEQ",       limit: 4,   null: false
    t.string  "EXPRULE",   limit: 255, null: false
    t.integer "FIELDID",   limit: 8,   null: false
    t.boolean "ISBLOCK",               null: false
    t.boolean "ISWARNING",             null: false
    t.string  "MSG",       limit: 255, null: false
  end

  create_table "prxfrx", id: false, force: :cascade do |t|
    t.integer "PFFRXID",    limit: 8, null: false
    t.integer "PFPRXID",    limit: 8, null: false
    t.boolean "PFINSTANCE",           null: false
  end

  create_table "prxfrxstn", primary_key: "PFSID", force: :cascade do |t|
    t.integer "PFSATTACHID",      limit: 8
    t.integer "PFSFRXID",         limit: 8, null: false
    t.integer "PFSINSTOWN",       limit: 8
    t.integer "PFSINSTOWNATTACH", limit: 8
    t.integer "PFSSTATIONID",     limit: 8, null: false
  end

  create_table "prxfrxstnelm", id: false, force: :cascade do |t|
    t.integer "PFSEFRXEID",  limit: 8, null: false
    t.integer "PFSID",       limit: 8, null: false
    t.integer "PFSEOPTIONS", limit: 4, null: false
  end

  add_index "prxfrxstnelm", ["PFSID"], name: "FK1A46758F3EDC56F7", using: :btree

  create_table "prxlink", id: false, force: :cascade do |t|
    t.integer "CHILDID",   limit: 8,                          null: false
    t.integer "PARENTID",  limit: 8,                          null: false
    t.decimal "VERSIONID",           precision: 19, scale: 2
  end

  create_table "prxprocess", primary_key: "NODEID", force: :cascade do |t|
    t.date    "CURRENTVERDT"
    t.decimal "CURRENTVERID",             precision: 19, scale: 2
    t.boolean "ISENABLE",                                          null: false
    t.string  "PDESC",        limit: 255,                          null: false
    t.string  "PNAME",        limit: 255,                          null: false
    t.string  "PREFIX",       limit: 255,                          null: false
  end

  create_table "prxrule", primary_key: "ID", force: :cascade do |t|
    t.string  "DESTINATION", limit: 255, null: false
    t.string  "EXPRULE",     limit: 255, null: false
    t.integer "NODEID",      limit: 8,   null: false
  end

  create_table "prxrulestation", id: false, force: :cascade do |t|
    t.integer "NODEID",    limit: 8, null: false
    t.integer "RULEID",    limit: 8, null: false
    t.integer "PROCESSID", limit: 8, null: false
  end

  create_table "prxstation", primary_key: "NODEID", force: :cascade do |t|
    t.date    "ATTACHDT"
    t.decimal "ATTACHID",                precision: 19, scale: 2
    t.string  "STATIONDESC", limit: 255
    t.string  "STATIONRMK",  limit: 255
    t.string  "STATIONTYPE", limit: 255
    t.integer "TIMEOUTDAY",  limit: 4
    t.decimal "VERSIONID",               precision: 19, scale: 2
    t.integer "XPOS",        limit: 4
    t.integer "YPOS",        limit: 4
  end

  create_table "prxversion", primary_key: "NODEID", force: :cascade do |t|
    t.datetime "ENDDT"
    t.datetime "STARTDT"
    t.string   "STATUS",  limit: 255, null: false
    t.string   "VERSION", limit: 255, null: false
  end

  create_table "referencelink", id: false, force: :cascade do |t|
    t.integer "NODEID",  limit: 8,   null: false
    t.integer "REFID",   limit: 8,   null: false
    t.string  "REFDESC", limit: 255
  end

  create_table "secbind", primary_key: "SBID", force: :cascade do |t|
    t.integer  "SBCOUNTREMAIN", limit: 4,   null: false
    t.integer  "SBCUSTPICID",   limit: 8
    t.datetime "SBDATE",                    null: false
    t.integer  "SBNODEID",      limit: 8,   null: false
    t.string   "SBPASS",        limit: 255
    t.integer  "SBPOLICY",      limit: 8,   null: false
    t.integer  "SBUSERID",      limit: 8
  end

  create_table "sectemplate", primary_key: "SID", force: :cascade do |t|
    t.boolean "SCOPYPASTE",                null: false
    t.integer "SCOUNTER",      limit: 4,   null: false
    t.integer "SEXPIRE",       limit: 4,   null: false
    t.boolean "SMACADDRESS",               null: false
    t.string  "SNAME",         limit: 255, null: false
    t.boolean "SPASSWORD",                 null: false
    t.boolean "SPRINT",                    null: false
    t.integer "SRENEWAL",      limit: 4,   null: false
    t.integer "SRENEWCOUNTER", limit: 4,   null: false
    t.boolean "SSAVE",                     null: false
    t.boolean "SSAVEAS",                   null: false
    t.boolean "SSELFDESTRUCT",             null: false
  end

  create_table "secureattach", primary_key: "SAID", force: :cascade do |t|
    t.integer "SANODEID", limit: 8, null: false
    t.integer "SASID",    limit: 8, null: false
    t.integer "SAUGID",   limit: 8, null: false
  end

  create_table "securemacaddr", primary_key: "SMID", force: :cascade do |t|
    t.integer "SMCPID",    limit: 8
    t.string  "SMMACADDR", limit: 255, null: false
    t.string  "SMTYPE",    limit: 255, null: false
  end

  create_table "seqtbl", primary_key: "PNAME", force: :cascade do |t|
    t.integer "PSEQ", limit: 8, null: false
  end

  create_table "stcknote", primary_key: "SNOTEID", force: :cascade do |t|
    t.decimal "SDOCID",                     precision: 19, scale: 2
    t.integer "SHEIGHT", limit: 4,                                   null: false
    t.integer "SPAGE",   limit: 4
    t.text    "STXTVAL", limit: 4294967295,                          null: false
    t.integer "SUSERID", limit: 8,                                   null: false
    t.integer "SWIDTH",  limit: 4,                                   null: false
    t.integer "SXVAL",   limit: 4,                                   null: false
    t.integer "SYVAL",   limit: 4,                                   null: false
  end

  add_index "stcknote", ["SNOTEID"], name: "SNOTEID", unique: true, using: :btree

  create_table "swfinfo", primary_key: "NODEID", force: :cascade do |t|
    t.string  "FEXT",      limit: 255, null: false
    t.string  "FFULLPATH", limit: 255, null: false
    t.integer "FSEQ",      limit: 4
  end

  create_table "tmpfmpolicy", primary_key: "FMPID", force: :cascade do |t|
    t.boolean "FMPDOWNLOAD",           null: false
    t.boolean "FMPREVISE",             null: false
    t.integer "FMPUGID",     limit: 8, null: false
    t.integer "FMPUGTYPE",   limit: 4, null: false
    t.boolean "FMPVIEW",               null: false
    t.integer "NODEID",      limit: 8, null: false
    t.integer "PRXID",       limit: 8, null: false
  end

  create_table "uwidget", id: false, force: :cascade do |t|
    t.integer "UWUSERID",   limit: 8,   null: false
    t.integer "UWWIDGETID", limit: 8,   null: false
    t.string  "UWHEIGHT",   limit: 255, null: false
    t.boolean "UWISOPEN",               null: false
    t.string  "UWWIDTH",    limit: 255, null: false
    t.integer "UWXPOS",     limit: 4,   null: false
    t.integer "UWYPOS",     limit: 4,   null: false
  end

  create_table "widget", primary_key: "WNODEID", force: :cascade do |t|
    t.string  "WDEFHEIGHT",   limit: 255, null: false
    t.string  "WDEFWIDTH",    limit: 255, null: false
    t.string  "WKEYSETCLASS", limit: 255
    t.integer "WMODID",       limit: 4,   null: false
    t.boolean "WSTATUS",                  null: false
  end

  create_table "windex", id: false, force: :cascade do |t|
    t.integer "NODEID", limit: 8,   null: false
    t.string  "WORD",   limit: 255, null: false
  end

  add_foreign_key "fmiso", "fmediainfo", column: "FMNODEID", primary_key: "NODEID", name: "FK5D0825E644FA3BE"
  add_foreign_key "fmpolicy", "node", column: "NODEID", primary_key: "NODEID", name: "FKAF2CC0B9F0C25817"
  add_foreign_key "prxfrxstnelm", "prxfrxstn", column: "PFSID", primary_key: "PFSID", name: "FK1A46758F3EDC56F7"
end
