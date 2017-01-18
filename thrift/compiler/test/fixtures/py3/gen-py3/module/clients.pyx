#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.vector cimport vector as vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref
from cpython.ref cimport PyObject
from thrift.lib.py3.thrift_client cimport EventBase, make_py3_client, py3_get_exception
from thrift.lib.py3.thrift_client import get_event_base
from thrift.lib.py3.folly cimport cFollyEventBase, cFollyTry, cFollyUnit, c_unit

import asyncio
import sys
import traceback

cimport module.types
from module.clients_wrapper cimport move

from module.clients_wrapper cimport cSimpleServiceAsyncClient, cSimpleServiceClientWrapper


cdef void made_SimpleService_py3_client_callback(
        PyObject* future,
        cFollyTry[unique_ptr[cSimpleServiceClientWrapper]] result) with gil:
    cdef object pyfuture = <object> future
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        pyclient = SimpleServiceClient(pyfuture.loop)
        pyclient._client = move(result.value())
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, pyclient)

cdef void SimpleService_get_five_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_add_five_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_do_nothing_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void SimpleService_concat_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode('UTF-8'))

cdef void SimpleService_get_value_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_negate_callback(
        PyObject* future,
        cFollyTry[cbool] result) with gil:
    cdef object pyfuture = <object> future
    cdef cbool citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_tiny_callback(
        PyObject* future,
        cFollyTry[int8_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int8_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_small_callback(
        PyObject* future,
        cFollyTry[int16_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int16_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_big_callback(
        PyObject* future,
        cFollyTry[int64_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int64_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_two_callback(
        PyObject* future,
        cFollyTry[double] result) with gil:
    cdef object pyfuture = <object> future
    cdef double citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_expected_exception_callback(
        PyObject* future,
        cFollyTry[cFollyUnit] result) with gil:
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    cdef unique_ptr[module.types.cSimpleException] ex_se
    if result.hasException[module.types.cSimpleException]():
        ex_se = py3_get_exception[module.types.cSimpleException](result.exception())
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, module.types.SimpleException.create(module.types.move(ex_se)))
    elif result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = c_unit;
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, None)

cdef void SimpleService_unexpected_exception_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_sum_i16_list_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_sum_i32_list_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_sum_i64_list_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_concat_many_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode('UTF-8'))

cdef void SimpleService_count_structs_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_sum_set_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_contains_word_callback(
        PyObject* future,
        cFollyTry[cbool] result) with gil:
    cdef object pyfuture = <object> future
    cdef cbool citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_get_map_value_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode('UTF-8'))

cdef void SimpleService_map_length_callback(
        PyObject* future,
        cFollyTry[int16_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int16_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_sum_map_values_callback(
        PyObject* future,
        cFollyTry[int16_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int16_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_complex_sum_i32_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_repeat_name_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode('UTF-8'))

cdef void SimpleService_get_struct_callback(
        PyObject* future,
        cFollyTry[module.types.cSimpleStruct] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[module.types.cSimpleStruct] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[module.types.cSimpleStruct](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.SimpleStruct.create(module.types.move(citem)))

cdef void SimpleService_fib_callback(
        PyObject* future,
        cFollyTry[vector[int32_t]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[vector[int32_t]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[vector[int32_t]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.List__i32.create(module.types.move(citem)))

cdef void SimpleService_unique_words_callback(
        PyObject* future,
        cFollyTry[cset[string]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[cset[string]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[cset[string]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.Set__string.create(module.types.move(citem)))

cdef void SimpleService_words_count_callback(
        PyObject* future,
        cFollyTry[cmap[string,int16_t]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[cmap[string,int16_t]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[cmap[string,int16_t]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.Map__string_i16.create(module.types.move(citem)))

cdef void SimpleService_set_enum_callback(
        PyObject* future,
        cFollyTry[module.types.cAnEnum] result) with gil:
    cdef object pyfuture = <object> future
    cdef module.types.cAnEnum citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.AnEnum(<int> citem))

cdef void SimpleService_list_of_lists_callback(
        PyObject* future,
        cFollyTry[vector[vector[int32_t]]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[vector[vector[int32_t]]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[vector[vector[int32_t]]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.List__List__i32.create(module.types.move(citem)))

cdef void SimpleService_word_character_frequency_callback(
        PyObject* future,
        cFollyTry[cmap[string,cmap[string,int32_t]]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[cmap[string,cmap[string,int32_t]]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[cmap[string,cmap[string,int32_t]]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.Map__string_Map__string_i32.create(module.types.move(citem)))

cdef void SimpleService_list_of_sets_callback(
        PyObject* future,
        cFollyTry[vector[cset[string]]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[vector[cset[string]]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[vector[cset[string]]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.List__Set__string.create(module.types.move(citem)))

cdef void SimpleService_nested_map_argument_callback(
        PyObject* future,
        cFollyTry[int32_t] result) with gil:
    cdef object pyfuture = <object> future
    cdef int32_t citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_make_sentence_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())).decode('UTF-8'))

cdef void SimpleService_get_union_callback(
        PyObject* future,
        cFollyTry[cset[int32_t]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[cset[int32_t]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[cset[int32_t]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.Set__i32.create(module.types.move(citem)))

cdef void SimpleService_get_keys_callback(
        PyObject* future,
        cFollyTry[cset[string]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[cset[string]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[cset[string]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.Set__string.create(module.types.move(citem)))

cdef void SimpleService_lookup_double_callback(
        PyObject* future,
        cFollyTry[double] result) with gil:
    cdef object pyfuture = <object> future
    cdef double citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = result.value();
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, citem)

cdef void SimpleService_retrieve_binary_callback(
        PyObject* future,
        cFollyTry[string] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[string] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[string](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, (deref(citem.get())))

cdef void SimpleService_contain_binary_callback(
        PyObject* future,
        cFollyTry[cset[string]] result) with gil:
    cdef object pyfuture = <object> future
    cdef unique_ptr[cset[string]] citem
    if result.hasException():
        try:
            result.exception().throwException()
        except:
            pyfuture.loop.call_soon_threadsafe(pyfuture.set_exception, sys.exc_info()[1])
    else:
        citem = make_unique[cset[string]](result.value());
        pyfuture.loop.call_soon_threadsafe(pyfuture.set_result, module.types.Set__binary.create(module.types.move(citem)))


cdef class SimpleServiceClient:
    cdef unique_ptr[cSimpleServiceClientWrapper] _client
    cdef object loop

    def __cinit__(self, loop):
        self.loop = loop

    @staticmethod
    async def make_client(bytes host, int port, loop=None):
        if loop is None:
           loop = asyncio.get_event_loop()
        future = loop.create_future()
        future.loop = loop
        eb = await get_event_base(loop)
        make_py3_client[cSimpleServiceAsyncClient, cSimpleServiceClientWrapper](
            (<EventBase> eb)._folly_event_base,
            host,
            port,
            0,
            made_SimpleService_py3_client_callback,
            future)
        return await future

    def get_five(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).get_five(
            SimpleService_get_five_callback,
            future)
        return future

    def add_five(
            self,
            arg_num):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).add_five(
            arg_num,
            SimpleService_add_five_callback,
            future)
        return future

    def do_nothing(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).do_nothing(
            SimpleService_do_nothing_callback,
            future)
        return future

    def concat(
            self,
            arg_first,
            arg_second):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).concat(
            arg_first.encode('UTF-8'),
            arg_second.encode('UTF-8'),
            SimpleService_concat_callback,
            future)
        return future

    def get_value(
            self,
            arg_simple_struct):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).get_value(
            deref((<module.types.SimpleStruct>arg_simple_struct).c_SimpleStruct),
            SimpleService_get_value_callback,
            future)
        return future

    def negate(
            self,
            arg_input):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).negate(
            arg_input,
            SimpleService_negate_callback,
            future)
        return future

    def tiny(
            self,
            arg_input):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).tiny(
            arg_input,
            SimpleService_tiny_callback,
            future)
        return future

    def small(
            self,
            arg_input):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).small(
            arg_input,
            SimpleService_small_callback,
            future)
        return future

    def big(
            self,
            arg_input):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).big(
            arg_input,
            SimpleService_big_callback,
            future)
        return future

    def two(
            self,
            arg_input):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).two(
            arg_input,
            SimpleService_two_callback,
            future)
        return future

    def expected_exception(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).expected_exception(
            SimpleService_expected_exception_callback,
            future)
        return future

    def unexpected_exception(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).unexpected_exception(
            SimpleService_unexpected_exception_callback,
            future)
        return future

    def sum_i16_list(
            self,
            arg_numbers):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).sum_i16_list(
            deref((<module.types.List__i16>arg_numbers)._vector),
            SimpleService_sum_i16_list_callback,
            future)
        return future

    def sum_i32_list(
            self,
            arg_numbers):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).sum_i32_list(
            deref((<module.types.List__i32>arg_numbers)._vector),
            SimpleService_sum_i32_list_callback,
            future)
        return future

    def sum_i64_list(
            self,
            arg_numbers):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).sum_i64_list(
            deref((<module.types.List__i64>arg_numbers)._vector),
            SimpleService_sum_i64_list_callback,
            future)
        return future

    def concat_many(
            self,
            arg_words):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).concat_many(
            deref((<module.types.List__string>arg_words)._vector),
            SimpleService_concat_many_callback,
            future)
        return future

    def count_structs(
            self,
            arg_items):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).count_structs(
            deref((<module.types.List__SimpleStruct>arg_items)._vector),
            SimpleService_count_structs_callback,
            future)
        return future

    def sum_set(
            self,
            arg_numbers):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).sum_set(
            deref((<module.types.Set__i32>arg_numbers)._set),
            SimpleService_sum_set_callback,
            future)
        return future

    def contains_word(
            self,
            arg_words,
            arg_word):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).contains_word(
            deref((<module.types.Set__string>arg_words)._set),
            arg_word.encode('UTF-8'),
            SimpleService_contains_word_callback,
            future)
        return future

    def get_map_value(
            self,
            arg_words,
            arg_key):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).get_map_value(
            deref((<module.types.Map__string_string>arg_words)._map),
            arg_key.encode('UTF-8'),
            SimpleService_get_map_value_callback,
            future)
        return future

    def map_length(
            self,
            arg_items):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).map_length(
            deref((<module.types.Map__string_SimpleStruct>arg_items)._map),
            SimpleService_map_length_callback,
            future)
        return future

    def sum_map_values(
            self,
            arg_items):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).sum_map_values(
            deref((<module.types.Map__string_i16>arg_items)._map),
            SimpleService_sum_map_values_callback,
            future)
        return future

    def complex_sum_i32(
            self,
            arg_counter):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).complex_sum_i32(
            deref((<module.types.ComplexStruct>arg_counter).c_ComplexStruct),
            SimpleService_complex_sum_i32_callback,
            future)
        return future

    def repeat_name(
            self,
            arg_counter):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).repeat_name(
            deref((<module.types.ComplexStruct>arg_counter).c_ComplexStruct),
            SimpleService_repeat_name_callback,
            future)
        return future

    def get_struct(
            self):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).get_struct(
            SimpleService_get_struct_callback,
            future)
        return future

    def fib(
            self,
            arg_n):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).fib(
            arg_n,
            SimpleService_fib_callback,
            future)
        return future

    def unique_words(
            self,
            arg_words):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).unique_words(
            deref((<module.types.List__string>arg_words)._vector),
            SimpleService_unique_words_callback,
            future)
        return future

    def words_count(
            self,
            arg_words):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).words_count(
            deref((<module.types.List__string>arg_words)._vector),
            SimpleService_words_count_callback,
            future)
        return future

    def set_enum(
            self,
            arg_in_enum):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).set_enum(
            module.types.AnEnum_to_cpp(arg_in_enum),
            SimpleService_set_enum_callback,
            future)
        return future

    def list_of_lists(
            self,
            arg_num_lists,
            arg_num_items):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).list_of_lists(
            arg_num_lists,
            arg_num_items,
            SimpleService_list_of_lists_callback,
            future)
        return future

    def word_character_frequency(
            self,
            arg_sentence):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).word_character_frequency(
            arg_sentence.encode('UTF-8'),
            SimpleService_word_character_frequency_callback,
            future)
        return future

    def list_of_sets(
            self,
            arg_some_words):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).list_of_sets(
            arg_some_words.encode('UTF-8'),
            SimpleService_list_of_sets_callback,
            future)
        return future

    def nested_map_argument(
            self,
            arg_struct_map):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).nested_map_argument(
            deref((<module.types.Map__string_List__SimpleStruct>arg_struct_map)._map),
            SimpleService_nested_map_argument_callback,
            future)
        return future

    def make_sentence(
            self,
            arg_word_chars):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).make_sentence(
            deref((<module.types.List__List__string>arg_word_chars)._vector),
            SimpleService_make_sentence_callback,
            future)
        return future

    def get_union(
            self,
            arg_sets):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).get_union(
            deref((<module.types.List__Set__i32>arg_sets)._vector),
            SimpleService_get_union_callback,
            future)
        return future

    def get_keys(
            self,
            arg_string_map):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).get_keys(
            deref((<module.types.List__Map__string_string>arg_string_map)._vector),
            SimpleService_get_keys_callback,
            future)
        return future

    def lookup_double(
            self,
            arg_key):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).lookup_double(
            arg_key,
            SimpleService_lookup_double_callback,
            future)
        return future

    def retrieve_binary(
            self,
            arg_something):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).retrieve_binary(
            arg_something,
            SimpleService_retrieve_binary_callback,
            future)
        return future

    def contain_binary(
            self,
            arg_binaries):
        future = self.loop.create_future()
        future.loop = self.loop
        deref(self._client).contain_binary(
            deref((<module.types.List__binary>arg_binaries)._vector),
            SimpleService_contain_binary_callback,
            future)
        return future
